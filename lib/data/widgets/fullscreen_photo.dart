import 'package:flutter/material.dart';

class FullscreenPhotoGallery extends StatefulWidget {
  final List<String> photos;
  final int initialIndex;

  const FullscreenPhotoGallery({
    super.key,
    required this.photos,
    this.initialIndex = 0,
  });

  @override
  State<FullscreenPhotoGallery> createState() => _FullscreenPhotoGalleryState();
}

class _FullscreenPhotoGalleryState extends State<FullscreenPhotoGallery> {
  late PageController _controller;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _controller = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photos = widget.photos;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                '${_currentIndex + 1} / ${photos.length}',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onVerticalDragEnd: (_) => Navigator.of(context).pop(),
        child: PageView.builder(
          controller: _controller,
          itemCount: photos.length,
          onPageChanged: (i) => setState(() => _currentIndex = i),
          itemBuilder: (context, index) {
            return InteractiveViewer(
              minScale: 1,
              maxScale: 4,
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      photos[index],
                      fit: BoxFit.contain,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const Center(
                          child: CircularProgressIndicator(color: Colors.white),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(
                        child: Icon(Icons.broken_image,
                            color: Colors.white, size: 64),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
