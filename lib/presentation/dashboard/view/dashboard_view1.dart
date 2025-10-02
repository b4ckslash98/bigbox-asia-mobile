// import 'package:flutter/material.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import '../../../lib.dart';

// @RoutePage()
// class DashboardView extends StatefulWidget {
//   const DashboardView({super.key});

//   @override
//   State<DashboardView> createState() => _DashboardViewState();
// }

// class _DashboardViewState extends State<DashboardView> {
//   final int fabIndex = 2; // Index for FAB (center)

//   late final List<List<dynamic>> tabs;

//   @override
//   void initState() {
//     super.initState();

//     // Dynamically configure the tabs based on user role
//     tabs = [
//       ['Home', Icons.grid_view_outlined, Icons.grid_view_outlined, HomeRoute()],
//       ['Jobs', Icons.work_outline, Icons.work, JobsRoute()],
//       if (context.isAdmin) // FAB for Admin
//         [
//           'Users',
//           Icons.admin_panel_settings,
//           Icons.admin_panel_settings,
//           UsersRoute()
//         ]
//       else if (context.isModel) // FAB for Model
//         ['Profile', Icons.person, Icons.person, ProfileRoute()]
//       else if (context.isClient) // FAB for Client
//         ['Post Job', Icons.post_add, Icons.post_add, ProfileRoute()],
//       [
//         'Notifikasi',
//         Icons.notifications_outlined,
//         Icons.notifications,
//         NotificationRoute()
//       ],
//       ['Logout', Icons.logout, Icons.logout, null],
//     ];
//   }

//   void _showLogoutDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text("Konfirmasi Logout"),
//         content: const Text("Apakah kamu yakin ingin keluar?"),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text("Batal"),
//           ),
//           TextButton(
//             onPressed: () async {
//               Navigator.of(context).pop();
//               AppDialog.loading(message: 'Logging out...');
//               try {
//                 await context.read<AuthCubit>().resetUser();
//                 AppDialog.hideLoading();
//                 context.router.replaceAll([const LoginRoute()]);
//                 Fluttertoast.showToast(msg: 'Logout berhasil');
//               } catch (e) {
//                 AppDialog.hideLoading();
//                 AppDialog.error('Gagal logout: $e');
//               }
//             },
//             child: const Text("Logout"),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsScaffold(
//       routes: tabs
//           .where((e) =>
//               e[3] != null) // Only include tabs with routes (skip Logout)
//           .map((e) => e[3] as PageRouteInfo)
//           .toList(),
//       homeIndex: 0,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           final fabRoute = tabs[fabIndex][3] as PageRouteInfo?;
//           if (fabRoute != null) {
//             context.router.push(fabRoute); // Navigate to route based on role
//           }
//         },
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         child: Icon(tabs[fabIndex][1] as IconData),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBuilder: (context, tabsRouter) => BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         height: 72,
//         padding: EdgeInsets.zero,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: tabs.asMap().entries.map((entry) {
//             final int index = entry.key;
//             final String label = entry.value[0] as String;
//             final IconData icon = tabsRouter.activeIndex == index
//                 ? entry.value[2] as IconData
//                 : entry.value[1] as IconData;
//             final fabRoute = tabs[index][3] as PageRouteInfo?;

//             if (index == fabIndex) {
//               return Expanded(
//                 child: InkWell(
//                   onTap: () {
//                     if (fabRoute != null) {
//                       context.router.push(fabRoute);
//                     }
//                   },
//                   child: Center(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const SizedBox(height: 24),
//                         Icon(
//                           icon,
//                           size: 24,
//                           color: Theme.of(context).colorScheme.primary,
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           label,
//                           style: TextStyle(
//                             fontSize: 8,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).colorScheme.primary,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }

//             return Expanded(
//               child: InkWell(
//                 onTap: () {
//                   if (index == tabs.length - 1) {
//                     _showLogoutDialog();
//                   } else {
//                     tabsRouter.setActiveIndex(index);
//                   }
//                 },
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         icon,
//                         size: 24,
//                         color: tabsRouter.activeIndex == index
//                             ? Theme.of(context).colorScheme.primary
//                             : Theme.of(context).disabledColor,
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         label,
//                         style: TextStyle(
//                           fontSize: 8,
//                           color: tabsRouter.activeIndex == index
//                               ? Theme.of(context).colorScheme.primary
//                               : Theme.of(context).disabledColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
