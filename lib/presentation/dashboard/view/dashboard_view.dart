import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../lib.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final int fabIndex = 2; // index FAB (tengah)

  final tabs = [
    ['Home', Icons.grid_view_outlined, Icons.grid_view_outlined, HomeRoute()],
    ['Jobs', Icons.work_outline, Icons.work, JobsRoute()],
    if (router.context!.isAdmin) // FAB for Admin
      [
        'Users',
        Icons.admin_panel_settings,
        Icons.admin_panel_settings,
        UsersRoute()
      ]
    else if (router.context!.isModel) // FAB for Model
      ['Profile', Icons.person, Icons.person, ProfileRoute()]
    else if (router.context!.isClient) // FAB for Client
      ['Post Job', Icons.post_add, Icons.post_add, ClientPostingJobRoute()],
    [
      'Notifikasi',
      Icons.notifications_outlined,
      Icons.notifications,
      NotificationRoute()
    ],
    ['Logout', Icons.logout, Icons.logout, null],
  ];

  void _showLogoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.logout,
                size: 48,
                color: Color(0xffFF6739),
              ),
              const SizedBox(height: 16),
              const Text(
                "Konfirmasi Logout",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Apakah kamu yakin ingin keluar dari aplikasi?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.grey[600],
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Batal"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pop(context); // Tutup bottom sheet

                        AppDialog.loading(message: 'Logging out...');

                        try {
                          await context.read<AuthCubit>().resetUser();

                          AppDialog.hideLoading();

                          context.router.replaceAll([const LoginRoute()]);

                          Fluttertoast.showToast(msg: 'Logout berhasil');
                        } catch (e) {
                          AppDialog.hideLoading();
                          AppDialog.error('Gagal logout: $e');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFF6739),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text("Logout"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int fabIndex = router.context!.isAdmin
        ? 2 // FAB 'Users' untuk Admin pada posisi ke-2
        : router.context!.isModel
            ? 2 // FAB 'Profile' untuk Model pada posisi ke-2
            : router.context!.isClient
                ? 2 // FAB 'Post Job' untuk Client pada posisi ke-2
                : 0; // Default FAB akan mengarah ke 'Home'
    return AutoTabsScaffold(
      routes: tabs
          .where((e) => e[3] != null)
          .map((e) => e[3] as PageRouteInfo)
          .toList(),
      homeIndex: 0,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoTabsRouter.of(context).setActiveIndex(fabIndex);
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(router.context!.isAdmin
            ? Icons.admin_panel_settings // Ikon FAB untuk Admin
            : router.context!.isModel
                ? Icons.account_circle // Ikon FAB untuk Model
                : router.context!.isClient
                    ? Icons.post_add // Ikon FAB untuk Client
                    : Icons.grid_view), // Ikon Default FAB,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) => BottomAppBar(
        shape: const CircularNotchedRectangle(),
        height: 72,
        padding: EdgeInsets.zero,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: tabs.asMap().entries.map((entry) {
            final int index = entry.key;
            final label = entry.value[0] as String;
            final icon = tabsRouter.activeIndex == index
                ? entry.value[2] as IconData
                : entry.value[1] as IconData;
            // Menambahkan label FAB ke bottom bar dan menjaga agar sejajar
            if (index == fabIndex) {
              return Expanded(
                child: InkWell(
                  onTap: () {
                    AutoTabsRouter.of(context).setActiveIndex(index);
                  },
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 24),
                        const SizedBox(height: 4),
                        Text(
                          label,
                          style: TextStyle(
                            fontSize: 8,
                            color: tabsRouter.activeIndex == fabIndex
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).disabledColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Expanded(
              child: InkWell(
                onTap: () {
                  if (index == tabs.length - 1) {
                    _showLogoutBottomSheet(context);
                  } else {
                    tabsRouter.setActiveIndex(index);
                  }
                },
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        icon,
                        size: 24,
                        color: tabsRouter.activeIndex == index
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).disabledColor,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: 8,
                          color: tabsRouter.activeIndex == index
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).disabledColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
