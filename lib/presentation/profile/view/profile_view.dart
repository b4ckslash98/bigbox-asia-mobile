import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

@RoutePage()
class ProfileView extends StatefulWidget implements AutoRouteWrapper {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  final List<String> tabs = [
    'Data Diri',
    'Portfolio',
    'Ringkasan',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
        bloc: context.read<AuthCubit>()..getProfile(),
        builder: (context, state) {
          if (state.profile == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final profileTalent = state.profile?.data?.profile;
          final String email = state.profile?.data?.email ?? 'Tidak Tersedia';
          String photoUrl = profileTalent!.photoProfile ?? '';
          return NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: const Color(0xffFF6739),
                  floating: false,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  toolbarHeight:
                      200, // Sesuaikan tinggi agar TabBar berada di bawah
                  flexibleSpace: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Header Profile
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Profile Picture (tidak berubah)
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.network(
                                      photoUrl,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.all(2),
                                      child: const Icon(
                                        Icons.verified,
                                        color: Colors.green,
                                        size: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 12),
                              // Nama, Username, Lokasi
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      profileTalent.name ??
                                          'Nama Tidak Tersedia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      profileTalent.username ??
                                          'Username Tidak Tersedia',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      profileTalent.location?.name ??
                                          'Lokasi Tidak Tersedia',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(), // Tambahkan Spacer untuk mendorong TabBar ke bawah

                        // TabBar
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TabBar(
                            controller: _tabController,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black54,
                            indicator: BoxDecoration(
                              color: Color(0xffFF6739),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorPadding: const EdgeInsets.all(4),
                            tabs: const [
                              Tab(
                                icon: Icon(Icons.person, size: 20),
                                text: 'Data Diri',
                              ),
                              Tab(
                                icon: Icon(Icons.photo_camera, size: 20),
                                text: 'Portfolio',
                              ),
                              Tab(
                                icon: Icon(Icons.description, size: 20),
                                text: 'Ringkasan',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                // Tab 1: Data Diri
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Rating Profil',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Center(
                                child: Column(
                                  children: [
                                    const Icon(Icons.trending_up,
                                        size: 50, color: Colors.grey),
                                    const SizedBox(height: 12),
                                    const Text(
                                      'Rating Belum Tersedia',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Butuh 10 job lagi untuk tampil rating',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 24),
                                    LinearProgressIndicator(
                                      value: 0,
                                      backgroundColor: Colors.grey[300],
                                      color: Colors.deepPurple,
                                      minHeight: 8,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Progress: 0/10 job',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    const Text(
                                      '10 job lagi untuk tampil rating',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(child: IdentityCard(profileTalent)),
                      SliverToBoxAdapter(child: SizedBox(height: 16)),
                      SliverToBoxAdapter(
                          child: PhysicalInfoCard(profileTalent)),
                      SliverToBoxAdapter(child: SocialMediaCard(profileTalent)),
                      SliverToBoxAdapter(child: SizedBox(height: 16)),
                      SliverToBoxAdapter(
                          child: KemampuanBahasaCard(
                              profileTalent: profileTalent)),
                      SliverToBoxAdapter(child: UserProfileCard(profileTalent)),
                    ],
                  ),
                ),
                // Tab 4: Portfolio
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                    SliverToBoxAdapter(child: PhotoGalleryCard(profileTalent)),
                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                    SliverToBoxAdapter(child: VideoPlayerCard(profileTalent)),
                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                    // SliverToBoxAdapter(child: UserProfileCard(profileTalent)),
                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                  ],
                ),
                // Tab 2-4: Placeholder
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                        child: AccountInfoCard(
                            profileTalent: profileTalent, email: email)),
                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                    // SliverToBoxAdapter(
                    //     child: FotoProfilCard(profileTalent: profileTalent)),
                    // SliverToBoxAdapter(child: SizedBox(height: 16)),
                    SliverToBoxAdapter(
                        child: PekerjaanDanBudgetSection(
                            profileTalent: profileTalent)),

                    SliverToBoxAdapter(child: SizedBox(height: 16)),
                    SliverToBoxAdapter(
                        child: DomisiliDokumenCard(profileTalent)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class IdentityCard extends StatelessWidget {
  final DataGetTalentProfile? profileTalent;
  const IdentityCard(this.profileTalent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.person, color: Colors.orange),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Identitas',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Data pribadi dan identitas',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Detail Items
            buildItem('Nama Lengkap', profileTalent?.name ?? 'Tidak Tersedia'),
            buildItem(
                'Nama Panggilan', profileTalent?.username ?? 'Tidak Tersedia'),
            buildItemWithIcon('Kewarganegaraan', 'WNI', Icons.flag),
            buildItemWithIcon(
                'Tanggal Lahir', 'Sabtu, 9 Oktober 1976', Icons.calendar_today),
            buildItem('Usia', '${profileTalent?.age ?? 0} tahun'),

            // Range Casting
            const Text(
              'Range Casting',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              children: List.generate(
                (profileTalent!.ageCastingMax! -
                        profileTalent!.ageCastingMin!) +
                    1,
                (index) {
                  int age = profileTalent!.ageCastingMin! + index;
                  return Chip(
                    backgroundColor: age == profileTalent!.age
                        ? Colors.deepOrange
                        : Colors.orange.shade100,
                    label: Text(
                      '$age',
                      style: TextStyle(
                        color: age == profileTalent!.age
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  );
                },
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'tahun',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),

            buildItem(
                'Jenis Kelamin', profileTalent?.gender ?? 'Tidak Tersedia'),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RichText(
        text: TextSpan(
          text: '$label\n',
          style: const TextStyle(color: Colors.grey),
          children: [
            TextSpan(
              text: value,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemWithIcon(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: Colors.orange),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: '$label\n',
                style: const TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: value,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhysicalInfoCard extends StatelessWidget {
  final DataGetTalentProfile? profileTalent;
  const PhysicalInfoCard(this.profileTalent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.straighten, color: Colors.orange),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Fisik',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Karakteristik fisik dan ukuran',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Tinggi & Berat
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.scale, color: Colors.red),
                        SizedBox(height: 8),
                        Text(
                          profileTalent?.height.toString() ?? 'Tidak Tersedia',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(height: 4),
                        Text('Tinggi (cm)'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.favorite_border, color: Colors.orange),
                        SizedBox(height: 8),
                        Text(
                          profileTalent?.weight.toString() ?? 'Tidak Tersedia',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        SizedBox(height: 4),
                        Text('Berat (kg)'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Ukuran Pakaian
            const Text(
              'Ukuran Pakaian',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClothingSize(
                    label: 'Baju',
                    value: profileTalent?.ukuranBaju ?? 'Tidak Tersedia'),
                ClothingSize(
                    label: 'Celana',
                    value: profileTalent?.ukuranCelana.toString() ??
                        'Tidak Tersedia'),
                ClothingSize(
                    label: 'Sepatu',
                    value: profileTalent?.ukuranSepatu.toString() ??
                        'Tidak Tersedia'),
              ],
            ),
            const SizedBox(height: 24),

            // Karakteristik
            const Text(
              'Karakteristik',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            buildCharacteristicRow('Etnis',
                chip: profileTalent?.suku ?? 'Tidak Tersedia'),
            buildCharacteristicRow('Warna Kulit',
                chip: profileTalent?.warnaKulit ?? 'Tidak Tersedia'),

            // buildCharacteristicRow('Warna Rambut', value: 'Hitam'),
            // buildCharacteristicRow('Bentuk Rambut', value: 'Lurus Panjang'),
            // buildCharacteristicRow('Bentuk Badan',
            //     chip: 'Ideal', chipColor: Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget buildCharacteristicRow(String label,
      {String? value, String? chip, Color? chipColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(label, style: const TextStyle(color: Colors.grey)),
          ),
          Expanded(
            flex: 5,
            child: value != null
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      value,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: Chip(
                      label: Text(
                        chip ?? '',
                        style: TextStyle(
                          color:
                              chipColor != null ? Colors.white : Colors.black,
                        ),
                      ),
                      backgroundColor: chipColor ?? Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class ClothingSize extends StatelessWidget {
  final String label;
  final String value;

  const ClothingSize({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}

class UserProfileCard extends StatelessWidget {
  DataGetTalentProfile? profileTalent;
  UserProfileCard([this.profileTalent]);

  @override
  Widget build(BuildContext context) {
    final experiences = profileTalent?.experiences ?? [];
    // Hitung jumlah video portfolio dari experiences yang memiliki video_url tidak kosong
    final videoCount =
        experiences.where((exp) => (exp.videoUrl ?? '').isNotEmpty).length;
    bool _isVideoUrl(String url) {
      final videoExtensions = [
        '.mp4',
        '.mov',
        '.avi',
        '.mkv',
        '.webm',
        '.m4v',
        '.3gp'
      ];
      final imageExtensions = [
        '.jpg',
        '.jpeg',
        '.png',
        '.gif',
        '.bmp',
        '.webp'
      ];

      String lowerUrl = url.toLowerCase();

      // Check for video extensions
      if (videoExtensions.any((ext) => lowerUrl.contains(ext))) {
        return true;
      }

      // Check for image extensions
      if (imageExtensions.any((ext) => lowerUrl.contains(ext))) {
        return false;
      }

      // Default fallback - you might want to adjust this based on your URL patterns
      // For example, if your video URLs contain 'video' and image URLs contain 'image'
      if (lowerUrl.contains('video')) return true;
      if (lowerUrl.contains('image') || lowerUrl.contains('photo'))
        return false;

      // If can't determine, assume it's a video (maintain backward compatibility)
      return true;
    }

    void showPhotoGallery(
        BuildContext context, List<String> photos, int index) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => FullscreenPhotoGallery(
            photos: photos,
            initialIndex: index,
          ),
        ),
      );
    }

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for Project, Video Portfolio, and Level with opacity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoBox(
                  label: experiences.length.toString(),
                  title: 'Total Project',
                  color: Colors.orange.shade100.withOpacity(0.6),
                ),
                _buildInfoBox(
                  label: videoCount.toString(),
                  title: 'Video Portfolio',
                  color: Colors.green.shade100.withOpacity(0.6),
                ),
                _buildInfoBox(
                  label: 'New',
                  title: 'Level',
                  color: Colors.blue.shade100.withOpacity(0.6),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Professional Experience section
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.08),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ],
                border: Border.all(color: Colors.orange.shade100, width: 1.2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.work,
                            color: Colors.orange, size: 28),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Pengalaman Profesional',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D3748),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (experiences.isEmpty)
                    Center(
                      child: Column(
                        children: [
                          Icon(Icons.info_outline,
                              size: 48, color: Colors.orange.shade200),
                          const SizedBox(height: 8),
                          const Text(
                            'Belum ada pengalaman profesional.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: experiences.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 16),
                      itemBuilder: (context, idx) {
                        final exp = experiences[idx];
                        String getFullVideoUrl(String? url) {
                          if (url == null || url.isEmpty) return '';
                          if (url.startsWith('http')) return url;
                          return 'http://103.197.189.66:8001/$url';
                        }

                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.orange.shade50,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Colors.orange.shade100, width: 1),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.check_circle,
                                      color: Colors.orange, size: 20),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      exp.title ?? '-',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFF2D3748),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if ((exp.description ?? '').isNotEmpty) ...[
                                const SizedBox(height: 8),
                                Text(
                                  exp.description ?? '',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF4A5568),
                                  ),
                                ),
                              ],
                              if ((exp.videoUrl ?? '').isNotEmpty) ...[
                                const SizedBox(height: 12),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Media type indicator
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: _isVideoUrl(exp.videoUrl!)
                                              ? Colors.blue.shade50
                                              : Colors.green.shade50,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              _isVideoUrl(exp.videoUrl!)
                                                  ? Icons.videocam
                                                  : Icons.image,
                                              size: 16,
                                              color: _isVideoUrl(exp.videoUrl!)
                                                  ? Colors.blue.shade600
                                                  : Colors.green.shade600,
                                            ),
                                            const SizedBox(width: 6),
                                            Text(
                                              _isVideoUrl(exp.videoUrl!)
                                                  ? 'Video'
                                                  : 'Photo',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    _isVideoUrl(exp.videoUrl!)
                                                        ? Colors.blue.shade600
                                                        : Colors.green.shade600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Media content
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        child: AspectRatio(
                                          aspectRatio: 16 / 9,
                                          child: _isVideoUrl(exp.videoUrl!)
                                              ? CustomVideoPlayer(
                                                  videoUrl: getFullVideoUrl(
                                                      exp.videoUrl),
                                                  config:
                                                      const VideoPlayerConfig(
                                                    primaryColor:
                                                        Color(0xFF6366F1),
                                                    autoPlay: false,
                                                    showPlaybackSpeed: false,
                                                    showControls: true,
                                                    aspectRatio: 16 / 9,
                                                    controlsTimeout:
                                                        Duration(seconds: 2),
                                                  ),
                                                  onError: (error) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                            'Video error: $error'),
                                                      ),
                                                    );
                                                  },
                                                )
                                              : GestureDetector(
                                                  onTap: () {
                                                    // Create a list with just this single image for the gallery
                                                    final imageUrls = [
                                                      getFullVideoUrl(
                                                          exp.videoUrl!)
                                                    ];
                                                    showPhotoGallery(
                                                      context,
                                                      imageUrls,
                                                      0, // Start at index 0 since it's a single image
                                                    );
                                                  },
                                                  child: Image.network(
                                                    getFullVideoUrl(
                                                        exp.videoUrl),
                                                    fit: BoxFit.cover,
                                                    loadingBuilder: (context,
                                                        child,
                                                        loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) return child;
                                                      return Container(
                                                        color: Colors.grey[200],
                                                        child: Center(
                                                          child:
                                                              CircularProgressIndicator(
                                                            value: loadingProgress
                                                                        .expectedTotalBytes !=
                                                                    null
                                                                ? loadingProgress
                                                                        .cumulativeBytesLoaded /
                                                                    loadingProgress
                                                                        .expectedTotalBytes!
                                                                : null,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    errorBuilder: (context,
                                                        error, stackTrace) {
                                                      return Container(
                                                        color: Colors.grey[200],
                                                        child: const Center(
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .broken_image,
                                                                size: 48,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              SizedBox(
                                                                  height: 8),
                                                              Text(
                                                                'Failed to load image',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        );
                      },
                    ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.info, color: Colors.orange, size: 20),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'Semua pengalaman telah diverifikasi dan menunjukkan kompetensi talent dalam industri kreatif. Portfolio video tersedia untuk memberikan gambaran yang lebih jelas tentang kemampuan dan kualitas kerja.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4A5568),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
