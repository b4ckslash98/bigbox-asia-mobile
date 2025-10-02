import 'dart:ui';
import 'package:bigbox_asia/lib.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeView extends StatefulWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) =>
          di<HomeCubit>()..initializeByRole(context.currentRole),
      child: this,
    );
  }
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final role = context.currentRole;

    return Scaffold(
      body: HomeContentFactory.create(role),
    );
  }
}

class HomeContentFactory {
  static Widget create(UserRole? role) {
    switch (role) {
      case UserRole.admin:
        return const AdminHomeContent();
      case UserRole.client:
        return const ClientHomeContent();
      case UserRole.talent:
        return const ModelHomeContent();
      default:
        return const ClientHomeContent();
      // Default ke client
    }
  }
}
