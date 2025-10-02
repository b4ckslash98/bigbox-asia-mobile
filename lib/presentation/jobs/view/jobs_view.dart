import 'package:bigbox_asia/lib.dart';
import 'package:bigbox_asia/presentation/jobs/view/talent_job_view.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class JobsView extends StatefulWidget implements AutoRouteWrapper {
  const JobsView({super.key});

  @override
  State<JobsView> createState() => _JobsViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<JobsCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _JobsViewState extends State<JobsView> {
  @override
  Widget build(BuildContext context) {
    final role = context.currentRole;
    print("Current Role: $role");

    return Scaffold(
      body: JobsContentFactory.create(role),
    );
  }
}

class JobsContentFactory {
  static Widget create(UserRole? role) {
    switch (role) {
      case UserRole.admin:
        return const AdminJobsView();
      case UserRole.client:
        return const ClientJobsView();
      case UserRole.talent:
        return const TalentJobView();
      default:
        return const TalentJobView();
    }
  }
}
