import 'package:bigbox_asia/lib.dart';
import 'package:bigbox_asia/presentation/notification/view/admin_notif_view.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class NotificationView extends StatefulWidget implements AutoRouteWrapper {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    final role = context.currentRole;
    print("Current Role: $role");

    return Scaffold(
      body: NotificationContentFactory.create(role),
    );
  }
}

class NotificationContentFactory {
  static Widget create(UserRole? role) {
    switch (role) {
      case UserRole.admin:
        return const AdminNotifView();
      case UserRole.client:
        return const ClientNotifView();
      case UserRole.talent:
        return const TalentNotifView();
      default:
        return const ClientHomeContent();
    }
  }
}
