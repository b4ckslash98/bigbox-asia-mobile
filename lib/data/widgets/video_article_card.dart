import 'package:flutter/material.dart';

import '../../lib.dart';

class VideoArticleCard extends StatelessWidget {
  final String category;
  final String title;
  final String description;
  final String author;
  final String videoUrl; // Tambahan field

  const VideoArticleCard({
    super.key,
    required this.category,
    required this.title,
    required this.description,
    required this.author,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black.withOpacity(0.04),
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video thumbnail section

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE5D0), Color(0xFFFFF5EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CustomVideoPlayer(
                  videoUrl: videoUrl,
                  config: const VideoPlayerConfig(
                    primaryColor: Color(0xFF6366F1),
                    autoPlay: false,
                    showPlaybackSpeed: false, // Matikan untuk grid view
                    showControls: true,
                    aspectRatio:
                        16 / 9, // Pastikan sama dengan childAspectRatio
                    controlsTimeout: Duration(seconds: 2),
                  ),
                  onError: (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Video error: $error')),
                    );
                  },
                ),
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  author,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.visibility_outlined,
                        size: 14, color: Colors.grey),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('Buka video: $videoUrl');
                      },
                      icon: const Icon(Icons.open_in_new_rounded,
                          size: 14, color: Colors.red),
                      label: const Text(
                        'Baca',
                        style: TextStyle(color: Colors.red),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade50,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
