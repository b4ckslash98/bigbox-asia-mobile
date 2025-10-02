import 'package:flutter/material.dart';

import '../../../lib.dart';

class SocialMediaCard extends StatelessWidget {
  DataGetTalentProfile? profileTalent;
  SocialMediaCard([this.profileTalent]);
  // Static data for social media platforms
  final Map<String, dynamic> datadummy = {
    'instagram': '@example_insta',
    'tiktok': '@example_tiktok',
    'youtube': 'example_channel',
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF14B8A6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      const Icon(Icons.language, color: Colors.white, size: 20),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Social Media & Portfolio',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      'Platform dan karya talent',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Items
            _buildSocialMediaItem(
              platform: 'Instagram',
              description: 'Platform foto & video',
              icon: Icons.camera_alt,
              color: const Color(0xFFE1306C),
              value: profileTalent?.instagramUsername ?? '@-',
              followersCount:
                  profileTalent?.instagramFollower?.toString() ?? '0',
            ),
            const SizedBox(height: 12),

            _buildSocialMediaItem(
              platform: 'TikTok',
              description: 'Platform video pendek',
              icon: Icons.music_note,
              color: const Color(0xFF000000),
              value: profileTalent?.instagramUsername ?? '@-',
              followersCount:
                  profileTalent?.instagramFollower?.toString() ?? '0',
            ),
            const SizedBox(height: 12),

            _buildSocialMediaItem(
              platform: 'YouTube',
              description: 'Platform video panjang',
              icon: Icons.play_circle_fill,
              color: const Color(0xFFFF0000),
              value: profileTalent?.instagramUsername ?? '@-',
              followersCount:
                  profileTalent?.instagramFollower?.toString() ?? '0',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaItem({
    required String platform,
    required String description,
    required IconData icon,
    required Color color,
    required String value,
    required String followersCount,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  platform,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 100, // adjustable based on your layout
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                ),
              ),
              Text(
                followersCount,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PhotoGalleryCard extends StatelessWidget {
  DataGetTalentProfile? profileTalent;
  PhotoGalleryCard([this.profileTalent]);
  // Static data for photos
  final List<String> photos = [
    "https://dummyimage.com/600x400/000/fff&text=Foto+1",
    "https://dummyimage.com/600x400/111/fff&text=Foto+2",
    "https://dummyimage.com/600x400/000/fff&text=Foto+3",
    "https://dummyimage.com/600x400/111/fff&text=Foto+4"
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.photo_library, color: Color(0xFF6366F1)),
                const SizedBox(width: 8),
                const Text(
                  'Photo Gallery',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3748),
                  ),
                ),
                const Spacer(),
                Text(
                  '${photos.length} photos',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF718096),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (photos.isEmpty)
              const Center(
                child: Column(
                  children: [
                    Icon(Icons.photo_library,
                        size: 64, color: Color(0xFF718096)),
                    SizedBox(height: 16),
                    Text(
                      'No photos available',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF718096),
                      ),
                    ),
                  ],
                ),
              )
            else
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.0,
                ),
                itemCount: profileTalent?.photos?.length ?? 0,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _showPhotoGallery(
                        context,
                        profileTalent?.photos
                                ?.map((photo) => photo.photoUrl ?? '')
                                .toList() ??
                            [],
                        index),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          Image.network(
                            profileTalent?.photos?[index].photoUrl ??
                                'https://via.placeholder.com/150',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                color: const Color(0xFFF7FAFC),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: const Color(0xFFF7FAFC),
                                child: const Icon(
                                  Icons.error,
                                  size: 32,
                                  color: Color(0xFF718096),
                                ),
                              );
                            },
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                Icons.fullscreen,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  // Show photo gallery in full screen (example)
  void _showPhotoGallery(BuildContext context, List<String> photos, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => FullscreenPhotoGallery(
          photos: photos,
          initialIndex: index,
        ),
      ),
    );
  }
}

class VideoPlayerCard extends StatelessWidget {
  DataGetTalentProfile? profileTalent;
  VideoPlayerCard([this.profileTalent]);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Icon(Icons.video_library, color: Color(0xFF6366F1)),
                const SizedBox(width: 8),
                const Text('Video Gallery'),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 16),

            // Video players - much simpler!
            if (profileTalent?.videos?.isEmpty ?? true)
              _buildEmptyVideoState()
            else
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 16 / 9, // Standard video ratio
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profileTalent?.videos?.length ?? 0,
                itemBuilder: (context, index) {
                  final video = profileTalent?.videos?[index];
                  final videoUrl = video?.videoUrl ?? '';
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF7FAFC),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CustomVideoPlayer(
                        videoUrl: videoUrl,
                        config: const VideoPlayerConfig(
                          primaryColor: Color(0xFF6366F1),
                          autoPlay: false,
                          showPlaybackSpeed: false, // Disable for grid view
                          showControls: true,
                          aspectRatio: 16 /
                              9, // Ensure this matches the childAspectRatio
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
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyVideoState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.video_library,
            size: 64,
            color: Color(0xFF718096),
          ),
          SizedBox(height: 16),
          Text(
            'No videos available',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF718096),
            ),
          ),
        ],
      ),
    );
  }
}

// class UserProfileCard extends StatelessWidget {
//   DataGetTalentProfile? profileTalent;
//   UserProfileCard([this.profileTalent]);

//   @override
//   Widget build(BuildContext context) {
//     final experiences = profileTalent?.experiences ?? [];
//     // Hitung jumlah video portfolio dari experiences yang memiliki video_url tidak kosong
//     final videoCount =
//         experiences.where((exp) => (exp.videoUrl ?? '').isNotEmpty).length;
//     bool _isVideoUrl(String url) {
//       final videoExtensions = [
//         '.mp4',
//         '.mov',
//         '.avi',
//         '.mkv',
//         '.webm',
//         '.m4v',
//         '.3gp'
//       ];
//       final imageExtensions = [
//         '.jpg',
//         '.jpeg',
//         '.png',
//         '.gif',
//         '.bmp',
//         '.webp'
//       ];

//       String lowerUrl = url.toLowerCase();

//       // Check for video extensions
//       if (videoExtensions.any((ext) => lowerUrl.contains(ext))) {
//         return true;
//       }

//       // Check for image extensions
//       if (imageExtensions.any((ext) => lowerUrl.contains(ext))) {
//         return false;
//       }

//       // Default fallback - you might want to adjust this based on your URL patterns
//       // For example, if your video URLs contain 'video' and image URLs contain 'image'
//       if (lowerUrl.contains('video')) return true;
//       if (lowerUrl.contains('image') || lowerUrl.contains('photo'))
//         return false;

//       // If can't determine, assume it's a video (maintain backward compatibility)
//       return true;
//     }

//     void showPhotoGallery(
//         BuildContext context, List<String> photos, int index) {
//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (_) => FullscreenPhotoGallery(
//             photos: photos,
//             initialIndex: index,
//           ),
//         ),
//       );
//     }

//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Row for Project, Video Portfolio, and Level with opacity
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildInfoBox(
//                   label: experiences.length.toString(),
//                   title: 'Total Project',
//                   color: Colors.orange.shade100.withOpacity(0.6),
//                 ),
//                 _buildInfoBox(
//                   label: videoCount.toString(),
//                   title: 'Video Portfolio',
//                   color: Colors.green.shade100.withOpacity(0.6),
//                 ),
//                 _buildInfoBox(
//                   label: 'New',
//                   title: 'Level',
//                   color: Colors.blue.shade100.withOpacity(0.6),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // Professional Experience section
//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.orange.withOpacity(0.08),
//                     blurRadius: 16,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//                 border: Border.all(color: Colors.orange.shade100, width: 1.2),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color: Colors.orange.shade100,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Icon(Icons.work,
//                             color: Colors.orange, size: 28),
//                       ),
//                       const SizedBox(width: 12),
//                       const Text(
//                         'Pengalaman Profesional',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF2D3748),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   if (experiences.isEmpty)
//                     Center(
//                       child: Column(
//                         children: [
//                           Icon(Icons.info_outline,
//                               size: 48, color: Colors.orange.shade200),
//                           const SizedBox(height: 8),
//                           const Text(
//                             'Belum ada pengalaman profesional.',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Color(0xFF718096),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   else
//                     ListView.separated(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: experiences.length,
//                       separatorBuilder: (_, __) => const SizedBox(height: 16),
//                       itemBuilder: (context, idx) {
//                         final exp = experiences[idx];
//                         String getFullVideoUrl(String? url) {
//                           if (url == null || url.isEmpty) return '';
//                           if (url.startsWith('http')) return url;
//                           return 'http://103.197.189.66:8001/$url';
//                         }

//                         return Container(
//                           decoration: BoxDecoration(
//                             color: Colors.orange.shade50,
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(
//                                 color: Colors.orange.shade100, width: 1),
//                           ),
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   const Icon(Icons.check_circle,
//                                       color: Colors.orange, size: 20),
//                                   const SizedBox(width: 8),
//                                   Expanded(
//                                     child: Text(
//                                       exp.title ?? '-',
//                                       style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16,
//                                         color: Color(0xFF2D3748),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               if ((exp.description ?? '').isNotEmpty) ...[
//                                 const SizedBox(height: 8),
//                                 Text(
//                                   exp.description ?? '',
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xFF4A5568),
//                                   ),
//                                 ),
//                               ],
//                               if ((exp.videoUrl ?? '').isNotEmpty) ...[
//                                 const SizedBox(height: 12),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     border:
//                                         Border.all(color: Colors.grey.shade300),
//                                   ),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       // Media type indicator
//                                       Container(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 12, vertical: 6),
//                                         decoration: BoxDecoration(
//                                           color: _isVideoUrl(exp.videoUrl!)
//                                               ? Colors.blue.shade50
//                                               : Colors.green.shade50,
//                                           borderRadius: const BorderRadius.only(
//                                             topLeft: Radius.circular(10),
//                                             topRight: Radius.circular(10),
//                                           ),
//                                         ),
//                                         child: Row(
//                                           children: [
//                                             Icon(
//                                               _isVideoUrl(exp.videoUrl!)
//                                                   ? Icons.videocam
//                                                   : Icons.image,
//                                               size: 16,
//                                               color: _isVideoUrl(exp.videoUrl!)
//                                                   ? Colors.blue.shade600
//                                                   : Colors.green.shade600,
//                                             ),
//                                             const SizedBox(width: 6),
//                                             Text(
//                                               _isVideoUrl(exp.videoUrl!)
//                                                   ? 'Video'
//                                                   : 'Photo',
//                                               style: TextStyle(
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w500,
//                                                 color:
//                                                     _isVideoUrl(exp.videoUrl!)
//                                                         ? Colors.blue.shade600
//                                                         : Colors.green.shade600,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       // Media content
//                                       ClipRRect(
//                                         borderRadius: const BorderRadius.only(
//                                           bottomLeft: Radius.circular(10),
//                                           bottomRight: Radius.circular(10),
//                                         ),
//                                         child: AspectRatio(
//                                           aspectRatio: 16 / 9,
//                                           child: _isVideoUrl(exp.videoUrl!)
//                                               ? CustomVideoPlayer(
//                                                   videoUrl: getFullVideoUrl(
//                                                       exp.videoUrl),
//                                                   config:
//                                                       const VideoPlayerConfig(
//                                                     primaryColor:
//                                                         Color(0xFF6366F1),
//                                                     autoPlay: false,
//                                                     showPlaybackSpeed: false,
//                                                     showControls: true,
//                                                     aspectRatio: 16 / 9,
//                                                     controlsTimeout:
//                                                         Duration(seconds: 2),
//                                                   ),
//                                                   onError: (error) {
//                                                     ScaffoldMessenger.of(
//                                                             context)
//                                                         .showSnackBar(
//                                                       SnackBar(
//                                                         content: Text(
//                                                             'Video error: $error'),
//                                                       ),
//                                                     );
//                                                   },
//                                                 )
//                                               : GestureDetector(
//                                                   onTap: () {
//                                                     // Create a list with just this single image for the gallery
//                                                     final imageUrls = [
//                                                       getFullVideoUrl(
//                                                           exp.videoUrl!)
//                                                     ];
//                                                     showPhotoGallery(
//                                                       context,
//                                                       imageUrls,
//                                                       0, // Start at index 0 since it's a single image
//                                                     );
//                                                   },
//                                                   child: Image.network(
//                                                     getFullVideoUrl(
//                                                         exp.videoUrl),
//                                                     fit: BoxFit.cover,
//                                                     loadingBuilder: (context,
//                                                         child,
//                                                         loadingProgress) {
//                                                       if (loadingProgress ==
//                                                           null) return child;
//                                                       return Container(
//                                                         color: Colors.grey[200],
//                                                         child: Center(
//                                                           child:
//                                                               CircularProgressIndicator(
//                                                             value: loadingProgress
//                                                                         .expectedTotalBytes !=
//                                                                     null
//                                                                 ? loadingProgress
//                                                                         .cumulativeBytesLoaded /
//                                                                     loadingProgress
//                                                                         .expectedTotalBytes!
//                                                                 : null,
//                                                           ),
//                                                         ),
//                                                       );
//                                                     },
//                                                     errorBuilder: (context,
//                                                         error, stackTrace) {
//                                                       return Container(
//                                                         color: Colors.grey[200],
//                                                         child: const Center(
//                                                           child: Column(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               Icon(
//                                                                 Icons
//                                                                     .broken_image,
//                                                                 size: 48,
//                                                                 color:
//                                                                     Colors.grey,
//                                                               ),
//                                                               SizedBox(
//                                                                   height: 8),
//                                                               Text(
//                                                                 'Failed to load image',
//                                                                 style: TextStyle(
//                                                                     color: Colors
//                                                                         .grey),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       );
//                                                     },
//                                                   ),
//                                                 ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ],
//                           ),
//                         );
//                       },
//                     ),
//                   const SizedBox(height: 20),
//                   Container(
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: Colors.orange.shade50,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       children: [
//                         const Icon(Icons.info, color: Colors.orange, size: 20),
//                         const SizedBox(width: 8),
//                         const Expanded(
//                           child: Text(
//                             'Semua pengalaman telah diverifikasi dan menunjukkan kompetensi talent dalam industri kreatif. Portfolio video tersedia untuk memberikan gambaran yang lebih jelas tentang kemampuan dan kualitas kerja.',
//                             style: TextStyle(
//                               fontSize: 13,
//                               color: Color(0xFF4A5568),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

// Helper method to create the info boxes
Widget _buildInfoBox(
    {required String label, required String title, required Color color}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
