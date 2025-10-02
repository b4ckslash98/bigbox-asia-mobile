import 'package:flutter/material.dart';

import '../../lib.dart';

class VideoGridWidget extends StatefulWidget {
  final List<String> videoUrls;

  const VideoGridWidget({
    Key? key,
    required this.videoUrls,
  }) : super(key: key);

  @override
  State<VideoGridWidget> createState() => _VideoGridWidgetState();
}

class _VideoGridWidgetState extends State<VideoGridWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 16 / 9,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.videoUrls.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFF7FAFC),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomVideoPlayer(
              key: ValueKey(
                  'video_${widget.videoUrls[index]}_${DateTime.now().millisecondsSinceEpoch}'),
              videoUrl: widget.videoUrls[index],
              config: const VideoPlayerConfig(
                primaryColor: Color(0xFF6366F1),
                autoPlay: false,
                showPlaybackSpeed: false,
                showControls: true,
                aspectRatio: 16 / 9,
                controlsTimeout: Duration(seconds: 2),
              ),
              onError: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Video error: $error')),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
