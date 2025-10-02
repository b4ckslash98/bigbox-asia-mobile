import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

// Configuration class for customizing the video player
class VideoPlayerConfig {
  final bool showControls;
  final bool autoPlay;
  final bool looping;
  final double aspectRatio;
  final Color primaryColor;
  final Color backgroundColor;
  final Duration controlsTimeout;
  final bool allowFullscreen;
  final bool allowVolumeControl;
  final bool showProgressBar;
  final bool showPlaybackSpeed;
  final List<double> playbackSpeeds;
  final String? placeholder;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  const VideoPlayerConfig({
    this.showControls = true,
    this.autoPlay = false,
    this.looping = false,
    this.aspectRatio = 16 / 9,
    this.primaryColor = const Color(0xFF6366F1),
    this.backgroundColor = Colors.black,
    this.controlsTimeout = const Duration(seconds: 3),
    this.allowFullscreen = true,
    this.allowVolumeControl = true,
    this.showProgressBar = true,
    this.showPlaybackSpeed = false,
    this.playbackSpeeds = const [0.5, 0.75, 1.0, 1.25, 1.5, 2.0],
    this.placeholder,
    this.loadingWidget,
    this.errorWidget,
  });
}

// Main CustomVideoPlayer widget
class CustomVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final VideoPlayerConfig config;
  final VoidCallback? onVideoEnd;
  final VoidCallback? onVideoStart;
  final Function(Duration)? onPositionChanged;
  final Function(String)? onError;

  const CustomVideoPlayer({
    Key? key,
    required this.videoUrl,
    this.config = const VideoPlayerConfig(),
    this.onVideoEnd,
    this.onVideoStart,
    this.onPositionChanged,
    this.onError,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer>
    with WidgetsBindingObserver {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _isLoading = true;
  bool _hasError = false;
  String? _errorMessage;
  bool _showControls = true;
  Timer? _controlsTimer;
  double _currentVolume = 1.0;
  double _currentSpeed = 1.0;
  bool _isFullscreen = false;
  late VideoPlayerConfig _config;

  @override
  void initState() {
    super.initState();
    _config = widget.config;
    WidgetsBinding.instance.addObserver(this);
    _initializeVideoPlayer();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controlsTimer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
        _controller?.pause();
        break;
      case AppLifecycleState.resumed:
        // Don't auto-resume, let user decide
        break;
      case AppLifecycleState.detached:
        _controller?.dispose();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  Future<void> _initializeVideoPlayer() async {
    try {
      setState(() {
        _isLoading = true;
        _hasError = false;
        _errorMessage = null;
      });

      _controller = VideoPlayerController.network(
        widget.videoUrl,
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
          allowBackgroundPlayback: false,
        ),
      );

      await _controller!.initialize();

      if (mounted) {
        setState(() {
          _isInitialized = true;
          _isLoading = false;
        });

        // Set initial configuration
        await _controller!.setLooping(_config.looping);
        await _controller!.setVolume(_currentVolume);

        if (_config.autoPlay) {
          await _controller!.play();
          widget.onVideoStart?.call();
        }

        // Listen for video end
        _controller!.addListener(_videoListener);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _hasError = true;
          _errorMessage = e.toString();
        });
        widget.onError?.call(e.toString());
      }
    }
  }

  void _videoListener() {
    if (_controller != null && _controller!.value.isInitialized) {
      final position = _controller!.value.position;
      final duration = _controller!.value.duration;

      widget.onPositionChanged?.call(position);

      // Check if video ended
      if (position >= duration && !_config.looping) {
        widget.onVideoEnd?.call();
      }
    }
  }

  Future<void> _togglePlayPause() async {
    if (_controller != null && _controller!.value.isInitialized) {
      if (_controller!.value.isPlaying) {
        await _controller!.pause();
      } else {
        await _controller!.play();
        widget.onVideoStart?.call();
      }
      _showControlsTemporarily();
    }
  }

  void _showControlsTemporarily() {
    if (!_config.showControls) return;

    setState(() {
      _showControls = true;
    });

    _controlsTimer?.cancel();
    _controlsTimer = Timer(_config.controlsTimeout, () {
      if (mounted && _controller != null && _controller!.value.isPlaying) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  Future<void> _seekTo(Duration position) async {
    if (_controller != null && _controller!.value.isInitialized) {
      await _controller!.seekTo(position);
    }
  }

  Future<void> _setVolume(double volume) async {
    if (_controller != null && _controller!.value.isInitialized) {
      await _controller!.setVolume(volume);
      setState(() {
        _currentVolume = volume;
      });
    }
  }

  Future<void> _setPlaybackSpeed(double speed) async {
    if (_controller != null && _controller!.value.isInitialized) {
      await _controller!.setPlaybackSpeed(speed);
      setState(() {
        _currentSpeed = speed;
      });
    }
  }

  void _toggleFullscreen() {
    if (_controller != null && _controller!.value.isInitialized) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FullscreenVideoPlayer(
            controller: _controller!,
            config: _config,
            onExit: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      );
    }
  }

  Future<void> _retry() async {
    await _initializeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _config.backgroundColor,
      child: AspectRatio(
        aspectRatio: _config.aspectRatio,
        child: Stack(
          children: [
            // Video player
            if (_isInitialized && _controller != null)
              GestureDetector(
                onTap: _config.showControls ? _showControlsTemporarily : null,
                child: VideoPlayer(_controller!),
              ),

            // Loading state
            if (_isLoading)
              _config.loadingWidget ??
                  const Center(
                    child: CircularProgressIndicator(),
                  ),

            // Error state
            if (_hasError)
              _config.errorWidget ??
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.white70,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Error loading video',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        if (_errorMessage != null) ...[
                          const SizedBox(height: 8),
                          Text(
                            _errorMessage!,
                            style: const TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: _retry,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _config.primaryColor,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

            // Controls overlay
            if (_config.showControls &&
                _showControls &&
                _isInitialized &&
                _controller != null)
              VideoControlsOverlay(
                controller: _controller!,
                config: _config,
                currentVolume: _currentVolume,
                currentSpeed: _currentSpeed,
                onPlayPause: _togglePlayPause,
                onSeek: _seekTo,
                onVolumeChange: _setVolume,
                onSpeedChange: _setPlaybackSpeed,
                onFullscreen:
                    _config.allowFullscreen ? _toggleFullscreen : null,
                onTap: _showControlsTemporarily,
              ),
          ],
        ),
      ),
    );
  }
}

// Video controls overlay widget
class VideoControlsOverlay extends StatefulWidget {
  final VideoPlayerController controller;
  final VideoPlayerConfig config;
  final double currentVolume;
  final double currentSpeed;
  final VoidCallback onPlayPause;
  final Function(Duration) onSeek;
  final Function(double) onVolumeChange;
  final Function(double) onSpeedChange;
  final VoidCallback? onFullscreen;
  final VoidCallback onTap;

  const VideoControlsOverlay({
    Key? key,
    required this.controller,
    required this.config,
    required this.currentVolume,
    required this.currentSpeed,
    required this.onPlayPause,
    required this.onSeek,
    required this.onVolumeChange,
    required this.onSpeedChange,
    required this.onFullscreen,
    required this.onTap,
  }) : super(key: key);

  @override
  State<VideoControlsOverlay> createState() => _VideoControlsOverlayState();
}

class _VideoControlsOverlayState extends State<VideoControlsOverlay> {
  bool _showVolumeSlider = false;
  bool _showSpeedOptions = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),

            // Center play/pause button
            Center(
              child: GestureDetector(
                onTap: widget.onPlayPause,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    widget.controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),

            // Top controls
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Volume control
                    if (widget.config.allowVolumeControl)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showVolumeSlider = !_showVolumeSlider;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Icon(
                            widget.currentVolume > 0
                                ? Icons.volume_up
                                : Icons.volume_off,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),

                    const SizedBox(width: 8),

                    // Speed control
                    if (widget.config.showPlaybackSpeed)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showSpeedOptions = !_showSpeedOptions;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${widget.currentSpeed}x',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                    const SizedBox(width: 8),

                    // Fullscreen button
                    if (widget.onFullscreen != null)
                      GestureDetector(
                        onTap: widget.onFullscreen,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            // Volume slider
            if (_showVolumeSlider)
              Positioned(
                top: 60,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Volume',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 100,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            value: widget.currentVolume,
                            onChanged: widget.onVolumeChange,
                            activeColor: widget.config.primaryColor,
                            inactiveColor: Colors.white30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Speed options
            if (_showSpeedOptions)
              Positioned(
                top: 60,
                right: 80,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: widget.config.playbackSpeeds.map((speed) {
                      return GestureDetector(
                        onTap: () {
                          widget.onSpeedChange(speed);
                          setState(() {
                            _showSpeedOptions = false;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: widget.currentSpeed == speed
                                ? widget.config.primaryColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${speed}x',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

            // Bottom controls
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Time display
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatDuration(widget.controller.value.position),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          _formatDuration(widget.controller.value.duration),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // Progress bar
                    if (widget.config.showProgressBar)
                      VideoProgressIndicator(
                        widget.controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          playedColor: widget.config.primaryColor,
                          bufferedColor: Colors.white30,
                          backgroundColor: Colors.white10,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    if (duration.inHours > 0) {
      return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
    } else {
      return '$twoDigitMinutes:$twoDigitSeconds';
    }
  }
}

// Fullscreen video player
class FullscreenVideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;
  final VideoPlayerConfig config;
  final VoidCallback onExit;

  const FullscreenVideoPlayer({
    Key? key,
    required this.controller,
    required this.config,
    required this.onExit,
  }) : super(key: key);

  @override
  State<FullscreenVideoPlayer> createState() => _FullscreenVideoPlayerState();
}

class _FullscreenVideoPlayerState extends State<FullscreenVideoPlayer> {
  bool _showControls = true;
  Timer? _controlsTimer;
  double _currentVolume = 1.0;
  double _currentSpeed = 1.0;
  bool _isLandscape = false;

  @override
  void initState() {
    super.initState();
    _currentVolume = widget.controller.value.volume;
    _currentSpeed = widget.controller.value.playbackSpeed;
    _enterFullscreen();
  }

  @override
  void dispose() {
    _exitFullscreen();
    _controlsTimer?.cancel();
    super.dispose();
  }

  void _enterFullscreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // Set preferred orientations
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
    ]);
  }

  void _exitFullscreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);

    // Reset to portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  Future<void> _togglePlayPause() async {
    if (widget.controller.value.isInitialized) {
      if (widget.controller.value.isPlaying) {
        await widget.controller.pause();
      } else {
        await widget.controller.play();
      }
      _showControlsTemporarily();
    }
  }

  void _showControlsTemporarily() {
    setState(() {
      _showControls = true;
    });

    _controlsTimer?.cancel();
    _controlsTimer = Timer(widget.config.controlsTimeout, () {
      if (mounted && widget.controller.value.isPlaying) {
        setState(() {
          _showControls = false;
        });
      }
    });
  }

  Future<void> _seekTo(Duration position) async {
    if (widget.controller.value.isInitialized) {
      await widget.controller.seekTo(position);
    }
  }

  Future<void> _setVolume(double volume) async {
    if (widget.controller.value.isInitialized) {
      await widget.controller.setVolume(volume);
      setState(() {
        _currentVolume = volume;
      });
    }
  }

  Future<void> _setPlaybackSpeed(double speed) async {
    if (widget.controller.value.isInitialized) {
      await widget.controller.setPlaybackSpeed(speed);
      setState(() {
        _currentSpeed = speed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.onExit();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Video player
            Center(
              child: AspectRatio(
                aspectRatio: widget.controller.value.aspectRatio,
                child: GestureDetector(
                  onTap: _showControlsTemporarily,
                  child: VideoPlayer(widget.controller),
                ),
              ),
            ),

            // Controls overlay
            if (_showControls)
              VideoControlsOverlay(
                controller: widget.controller,
                config: widget.config,
                currentVolume: _currentVolume,
                currentSpeed: _currentSpeed,
                onPlayPause: _togglePlayPause,
                onSeek: _seekTo,
                onVolumeChange: _setVolume,
                onSpeedChange: _setPlaybackSpeed,
                onFullscreen: widget.onExit,
                onTap: _showControlsTemporarily,
              ),

            // Exit button
            if (_showControls)
              Positioned(
                top: MediaQuery.of(context).padding.top + 16,
                left: 16,
                child: GestureDetector(
                  onTap: widget.onExit,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
