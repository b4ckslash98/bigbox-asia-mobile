import 'package:flutter/material.dart';

import '../../../lib.dart';

class DomisiliDokumenCard extends StatelessWidget {
  const DomisiliDokumenCard(this.profileTalent, {super.key});

  final DataGetTalentProfile? profileTalent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.location_on, color: Colors.lightBlue),
                ),
                const SizedBox(width: 12),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Domisili & Dokumen',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Lokasi dan kelengkapan dokumen',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Domisili Info
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.location_city, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Domisili'),
                  SizedBox(width: 12),
                  Text(
                    profileTalent?.location?.name ?? 'Tidak Tersedia',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Dokumen: Passport
            buildDocumentRow(
              icon: Icons.shield,
              title: 'Passport',
              subtitle: 'Dokumen perjalanan',
              count: 0,
              available: profileTalent?.isPassport ?? false,
            ),
            const SizedBox(height: 16),

            // Dokumen: NPWP
            buildDocumentRow(
              icon: Icons.credit_card,
              title: 'NPWP',
              subtitle: 'Nomor pajak',
              count: 0,
              available: profileTalent?.isPassport ?? false,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDocumentRow({
    required IconData icon,
    required String title,
    required String subtitle,
    required int count,
    required bool available,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
                const SizedBox(width: 12),
                Text(
                  '$count',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                available ? Icons.check : Icons.close,
                color: available ? Colors.green : Colors.black54,
                size: 20,
              ),
              Text(
                available ? 'Ada' : 'Tidak\nAda',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AccountInfoCard extends StatelessWidget {
  final DataGetTalentProfile? profileTalent;
  final String email;
  const AccountInfoCard({super.key, this.profileTalent, required this.email});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.person, color: Colors.blue),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Informasi Akun',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Detail akun dan kontak',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            InfoRow(
                title: 'Username',
                value: profileTalent?.username ?? 'Tidak Tersedia'),
            InfoRow(title: 'Email', value: email),
            InfoRow(
                title: 'No. Telepon',
                value: profileTalent?.phone ?? 'Tidak Tersedia'),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey)),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class FotoProfilCard extends StatelessWidget {
  final DataGetTalentProfile? profileTalent;

  const FotoProfilCard({super.key, this.profileTalent});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.photo_camera_outlined, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'Foto Profil',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.orange,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  profileTalent?.photoProfile ??
                      'https://via.placeholder.com/150',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KemampuanBahasaCard extends StatelessWidget {
  const KemampuanBahasaCard({super.key, this.profileTalent});

  final DataGetTalentProfile? profileTalent;

  @override
  Widget build(BuildContext context) {
    final userLanguages = profileTalent?.userLanguage ?? [];

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Icon(Icons.language, color: Colors.redAccent, size: 24),
                const SizedBox(width: 8),
                const Text(
                  'Kemampuan Bahasa',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Looping untuk menampilkan daftar bahasa
            if (userLanguages.isNotEmpty)
              ...userLanguages.map((language) {
                return Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.circle, size: 8, color: Colors.grey),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                language.language ?? 'Tidak Tersedia',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                language.level ?? 'Tidak Tersedia',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    if (language != userLanguages.last)
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    const SizedBox(height: 12),
                  ],
                );
              }).toList()
            else
              const Center(
                child: Text(
                  'Belum ada data kemampuan bahasa.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
