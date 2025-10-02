import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:auto_route/auto_route.dart';

import '../../../lib.dart';

@RoutePage()
class AdminDetailUsersCardView extends StatefulWidget
    implements AutoRouteWrapper {
  final String talentId;
  const AdminDetailUsersCardView({super.key, required this.talentId});

  @override
  _AdminDetailUsersCardViewState createState() =>
      _AdminDetailUsersCardViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AdminDetailUsersCardCubit>(
      create: (context) =>
          di<AdminDetailUsersCardCubit>()..getAdminDetailTalent(talentId),
      child: this,
    );
  }
}

class _AdminDetailUsersCardViewState extends State<AdminDetailUsersCardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<AdminDetailUsersCardCubit, AdminDetailUsersCardState>(
        builder: (context, state) {
      final datadummy = state.talentProfile;
      final talentData = datadummy?.data;
      if (talentData?.profile == null) {
        return Container(
          width: context.sizeWidth,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              // Header with back button
              Container(
                width: context.sizeWidth,
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFEC2323), Color(0xFFFF6B00)],
                  ),
                ),
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.white,
                      onPressed: () {
                        context.router.maybePop();
                      },
                    ),
                    const Expanded(
                      child: Text(
                        'Detail Profile Talent',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 48), // To balance the back button
                  ],
                ),
              ),
              // Empty state content
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_off,
                          size: 80,
                          color: Color(0xFF718096),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Talent belum mengisi profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Data profil talent tidak tersedia',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF718096),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      return Container(
        width: context.sizeWidth,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      width: context.sizeWidth,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFEC2323), Color(0xFFFF6B00)],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header title and icons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  BackButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      context.router.maybePop();
                                    },
                                  ),
                                  const Text(
                                    'Detail Profile Talent',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.share,
                                            color: Colors.white),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.edit,
                                            color: Colors.white),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),

                              // Profile section
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      // Foto profil placeholder (circle dengan inisial)
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.grey[300],
                                          image: datadummy!.data!.profile!
                                                      .photoProfile !=
                                                  null
                                              ? DecorationImage(
                                                  image: NetworkImage(datadummy
                                                      .data!
                                                      .profile!
                                                      .photoProfile
                                                      .toString()),
                                                  fit: BoxFit.cover,
                                                )
                                              : null,
                                        ),
                                        child: datadummy.data!.profile!.name ==
                                                null
                                            ? Center(
                                                child: Text(
                                                  datadummy.data!.profile!.name
                                                          ?.toString()
                                                          .substring(0, 1)
                                                          .toUpperCase() ??
                                                      'U',
                                                  style: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            : null,
                                      ),
                                      // Badge ceklis
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                          ),
                                          child: const Icon(Icons.check,
                                              size: 14, color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 12),

                                  // Nama, username, lokasi, badges
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          datadummy.data!.profile!.username
                                                  ?.toString() ??
                                              'Unknown',
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '@${datadummy.data!.email?.toString() ?? 'unknown'}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Row(
                                          children: [
                                            const Icon(Icons.location_on,
                                                color: Colors.white70,
                                                size: 16),
                                            const SizedBox(width: 4),
                                            Text(
                                              datadummy.data!.profile!.location!
                                                      .name
                                                      ?.toString() ??
                                                  'Tidak diketahui',
                                              style: const TextStyle(
                                                color: Colors.white70,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            // Status verifikasi badge
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                color: datadummy.data!
                                                            .verificationStatus ==
                                                        'terverifikasi'
                                                    ? const Color(0xFF10B981)
                                                    : const Color(0xFFF59E0B),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                datadummy.data!
                                                        .verificationStatus
                                                        ?.toString() ??
                                                    'pending',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            // Referral badge
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                              decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Text(
                                                'No Referral',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildUserInfoCard(talentData!),
                        _buildPhysicalInfoCard(talentData),
                        const SizedBox(height: 20),
                        _buildSocialMediaCard(talentData),
                        const SizedBox(height: 20),
                        _buildAccountStatusCard(talentData),
                        const SizedBox(height: 20),
                        _buildPhotoGalleryCard(talentData),
                        const SizedBox(height: 20),
                        _buildVideoPlayerCard(talentData),
                        const SizedBox(height: 20),
                        if (context.isAdmin) _buildAdminActions(talentData),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildUserInfoCard(TalentData datadummy) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.emoji_people,
                      color: Colors.white, size: 20),
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
                      'Data Pribadi dan indentitas',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
                'Email', datadummy.email?.toString() ?? 'Not provided'),
            _buildInfoRow('Phone',
                datadummy.profile?.phone?.toString() ?? 'Not provided'),
            _buildInfoRow('Age',
                '${datadummy.profile?.age?.toString() ?? 'Unknown'} years'),
            _buildInfoRow(
                'Casting Range',
                datadummy.profile?.ageCastingMin != null &&
                        datadummy.profile?.ageCastingMax != null
                    ? _buildAgeRange(datadummy.profile!.ageCastingMin!,
                        datadummy.profile!.ageCastingMax!)
                    : 'Not specified'),
            _buildInfoRow('Ethnicity',
                datadummy.profile?.suku?.toString() ?? 'Not specified'),
            _buildInfoRow('Skin Color',
                datadummy.profile?.warnaKulit?.toString() ?? 'Not specified'),
          ],
        ),
      ),
    );
  }

  String _buildAgeRange(int minAge, int maxAge) {
    if (minAge == maxAge) {
      return '$minAge Tahun';
    }

    List<String> ages = [];
    for (int i = minAge; i <= maxAge; i++) {
      ages.add(i.toString());
    }
    return '${ages.join(', ')} Tahun';
  }

  Widget _buildPhysicalInfoCard(TalentData datadummy) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Title
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.straighten,
                      color: Colors.white, size: 20),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Fisik',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Karakteristik fisik dan ukuran',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Height & Weight Cards
            Row(
              children: [
                _buildMiniCard(
                  value: datadummy.profile?.height?.toString() ?? '168',
                  label: 'TINGGI (CM)',
                  icon: Icons.straighten,
                  color: const Color(0xFF8B5CF6),
                ),
                const SizedBox(width: 12),
                _buildMiniCard(
                  value: datadummy.profile?.weight?.toString() ?? '50',
                  label: 'BERAT (KG)',
                  icon: Icons.favorite,
                  color: const Color(0xFFEC4899),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Ukuran Pakaian
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 248, 255),
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: const Color.fromARGB(255, 75, 159, 255)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.checkroom, color: Color(0xFF3B82F6)),
                      SizedBox(width: 8),
                      Text(
                        'Ukuran Pakaian',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3B82F6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSizeBox('BAJU',
                          datadummy.profile?.ukuranBaju?.toString() ?? 'M'),
                      _buildSizeBox('CELANA',
                          datadummy.profile?.ukuranCelana?.toString() ?? '34'),
                      _buildSizeBox('SEPATU',
                          datadummy.profile?.ukuranSepatu?.toString() ?? '38'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Karakteristik Fisik
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF7E6),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFFFC84B)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFFFFA500)),
                      SizedBox(width: 8),
                      Text(
                        'Karakteristik Fisik',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFA500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      _buildBadge('Etnis',
                          datadummy.profile?.suku?.toString() ?? 'Jawa'),
                      _buildBadge('Warna Kulit',
                          datadummy.profile?.warnaKulit?.toString() ?? 'Putih'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMiniCard({
    required String value,
    required String label,
    required IconData icon,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(height: 12),
            Text(
              value,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeBox(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Color(0xFF3B82F6),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBadge(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.orange),
          ),
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMediaCard(TalentData datadummy) {
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
              value: datadummy.profile?.instagramUsername.toString() ?? '@-',
              followers: datadummy.profile?.instagramFollower.toString() ?? '0',
            ),
            const SizedBox(height: 12),

            _buildSocialMediaItem(
              platform: 'TikTok',
              description: 'Platform video pendek',
              icon: Icons.music_note,
              color: const Color(0xFF000000),
              value: datadummy.profile?.tiktokUsername.toString() ?? '@-',
              followers: datadummy.profile?.tiktokFollower.toString() ?? '0',
            ),
            const SizedBox(height: 12),

            _buildSocialMediaItem(
              platform: 'YouTube',
              description: 'Platform video panjang',
              icon: Icons.play_circle_fill,
              color: const Color(0xFFFF0000),
              value: datadummy.profile?.youtubeUsername.toString() ?? '-',
              followers: datadummy.profile?.youtubeFollower.toString() ?? '0',
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
    required String followers,
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
                followers, // Jumlah followers bisa dinamis
                style: TextStyle(
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

  Widget _buildAccountStatusCard(TalentData datadummy) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account Status',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: _buildStatusItem(
                    'Status',
                    datadummy.verificationStatus?.toString() ?? 'Unknown',
                    datadummy.verificationStatus == 'active'
                        ? const Color(0xFF10B981)
                        : const Color(0xFFEF4444),
                  ),
                ),
                Expanded(
                  child: _buildStatusItem(
                    'Verification',
                    datadummy.verificationStatus?.toString() ?? 'Unknown',
                    datadummy.verificationStatus == 'verified'
                        ? const Color(0xFF10B981)
                        : const Color(0xFFF59E0B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildInfoRow(
                'Joined', datadummy.createdAt?.toString() ?? 'Unknown'),
            _buildInfoRow(
                'Last Login', datadummy.updatedAt?.toString() ?? 'Unknown'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusItem(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF718096),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoGalleryCard(TalentData datadummy) {
    final List<String> photos = (datadummy.profile?.photos as List?)
            ?.map((photo) {
              if (photo is Map<String, dynamic>) {
                return photo['photo_url']?.toString() ?? '';
              } else {
                // If it's a custom object with photo_url property
                return photo.photoUrl?.toString() ?? '';
              }
            })
            .where((url) => url.isNotEmpty)
            .toList()
            .cast<String>() ??
        [];

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
                itemCount: photos.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _showPhotoGallery(photos, index),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        children: [
                          Image.network(
                            photos[index],
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

  Widget _buildVideoPlayerCard(TalentData datadummy) {
    final List<String> videoUrls = (datadummy.profile?.videos as List?)
            ?.map((video) {
              if (video is Map<String, dynamic>) {
                return video['video_url']?.toString() ?? '';
              } else {
                return video.videoUrl?.toString() ?? '';
              }
            })
            .where((url) => url.isNotEmpty)
            .toList()
            .cast<String>() ??
        [];

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
                const Icon(Icons.video_library, color: Color(0xFF6366F1)),
                const SizedBox(width: 8),
                const Text('Video Gallery'),
                const Spacer(),
                // Add refresh button to force video reload
                IconButton(
                  icon: const Icon(Icons.refresh, color: Color(0xFF6366F1)),
                  onPressed: () {
                    context
                        .read<AdminDetailUsersCardCubit>()
                        .getAdminDetailTalent(widget.talentId);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (videoUrls.isEmpty)
              _buildEmptyVideoState()
            else
              VideoGridWidget(
                key: ValueKey('${widget.talentId}_${videoUrls.hashCode}'),
                videoUrls: videoUrls,
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

  Widget _buildAdminActions(TalentData talentData) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Admin Actions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _showVerificationDialog(talentData),
                    icon: const Icon(Icons.verified_user),
                    label: const Text('Verify Account'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF10B981),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _showSuspendDialog(talentData),
                    icon: const Icon(Icons.block),
                    label: const Text('Suspend'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEF4444),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _showEditDialog(talentData),
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit Profile'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF6366F1),
                      side: const BorderSide(color: Color(0xFF6366F1)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _showSendMessageDialog(talentData),
                    icon: const Icon(Icons.message),
                    label: const Text('Send Message'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF6366F1),
                      side: const BorderSide(color: Color(0xFF6366F1)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method untuk build info row
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF718096),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Text(': ', style: TextStyle(color: Color(0xFF718096))),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF2D3748),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Show photo gallery fullscreen
  void _showPhotoGallery(List<String> photos, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            title: Text(
              'Photo ${initialIndex + 1} of ${photos.length}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          body: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(photos[index]),
                initialScale: PhotoViewComputedScale.contained,
                heroAttributes: PhotoViewHeroAttributes(tag: photos[index]),
              );
            },
            itemCount: photos.length,
            loadingBuilder: (context, event) => const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
            pageController: PageController(initialPage: initialIndex),
          ),
        ),
      ),
    );
  }

  // Show more options menu
  void _showMoreOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E8F0),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'More Options',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.share, color: Color(0xFF6366F1)),
              title: const Text('Share Profile'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile shared')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.download, color: Color(0xFF6366F1)),
              title: const Text('Export Data'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Exporting user data...')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Color(0xFF6366F1)),
              title: const Text('View Activity Log'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Opening activity log...')),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.report, color: Color(0xFFEF4444)),
              title: const Text('Report User'),
              onTap: () {
                Navigator.pop(context);
                _showReportDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  // Show verification dialog
  void _showVerificationDialog(TalentData datadummy) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text('Verify Account'),
        content: Text(
          'Are you sure you want to verify ${datadummy.profile?.name}\'s account?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Account verified successfully'),
                  backgroundColor: Color(0xFF10B981),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF10B981),
              foregroundColor: Colors.white,
            ),
            child: const Text('Verify'),
          ),
        ],
      ),
    );
  }

  // Show suspend dialog
  void _showSuspendDialog(TalentData datadummy) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text('Suspend Account'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you sure you want to suspend ${datadummy.profile?.name}\'s account?',
            ),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason for suspension',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Account suspended'),
                  backgroundColor: Color(0xFFEF4444),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF4444),
              foregroundColor: Colors.white,
            ),
            child: const Text('Suspend'),
          ),
        ],
      ),
    );
  }

  // Show edit dialog
  void _showEditDialog(TalentData datadummy) {
    final nameController = TextEditingController(text: datadummy.profile?.name);
    final emailController = TextEditingController(text: datadummy.email);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text('Edit Profile'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile updated successfully')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              foregroundColor: Colors.white,
            ),
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  // Show send message dialog
  void _showSendMessageDialog(TalentData datadummy) {
    final messageController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text('Send Message to ${datadummy.profile?.name}'),
        content: TextField(
          controller: messageController,
          decoration: const InputDecoration(
            labelText: 'Message',
            hintText: 'Type your message here...',
            border: OutlineInputBorder(),
          ),
          maxLines: 4,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Message sent successfully')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6366F1),
              foregroundColor: Colors.white,
            ),
            child: const Text('Send'),
          ),
        ],
      ),
    );
  }

  // Show report dialog
  void _showReportDialog() {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: const Text('Report User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Why are you reporting this user?'),
            const SizedBox(height: 16),
            TextField(
              controller: reasonController,
              decoration: const InputDecoration(
                labelText: 'Reason',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Report submitted'),
                  backgroundColor: Color(0xFFEF4444),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEF4444),
              foregroundColor: Colors.white,
            ),
            child: const Text('Report'),
          ),
        ],
      ),
    );
  }
}
