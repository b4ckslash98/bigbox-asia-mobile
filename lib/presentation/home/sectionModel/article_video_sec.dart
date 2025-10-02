import 'package:flutter/material.dart';

import '../../../lib.dart';

class ArticleVideoSection extends StatelessWidget {
  const ArticleVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> articles = [
      {
        'category': 'Career',
        'title': 'Cara Bangun Personal Branding',
        'desc':
            'Strategi efektif untuk membangun personal branding sebagai talent di era digital...',
        'author': 'Expert Talent',
        'url':
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      },
      {
        'category': 'Tips',
        'title': 'Menghadapi Audisi Pertama',
        'desc':
            'Tips agar kamu lebih percaya diri dan maksimal saat audisi pertama kamu...',
        'author': 'Coach Audisi',
        'url':
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      },
      {
        'category': 'Inspirasi',
        'title': 'Rahasia Sukses Para Bintang',
        'desc':
            'Kisah inspiratif dari mereka yang telah berhasil menembus industri hiburan...',
        'author': 'Star Mentor',
        'url':
            'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.article_outlined, color: Colors.green),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Artikel & Tips",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Pelajari tips sukses casting",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,
                        size: 12, color: Colors.orange),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 320,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final data = articles[index];
                return VideoArticleCard(
                  category: data['category']!,
                  title: data['title']!,
                  description: data['desc']!,
                  author: data['author']!,
                  videoUrl: data['url']!,
                );
              },
            ),
          ),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
