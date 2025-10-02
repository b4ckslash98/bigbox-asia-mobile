// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AddAdminView]
class AddAdminRoute extends PageRouteInfo<void> {
  const AddAdminRoute({List<PageRouteInfo>? children})
    : super(AddAdminRoute.name, initialChildren: children);

  static const String name = 'AddAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddAdminView());
    },
  );
}

/// generated route for
/// [AddTalentView]
class AddTalentRoute extends PageRouteInfo<void> {
  const AddTalentRoute({List<PageRouteInfo>? children})
    : super(AddTalentRoute.name, initialChildren: children);

  static const String name = 'AddTalentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AddTalentView());
    },
  );
}

/// generated route for
/// [AdminAnnouncementView]
class AdminAnnouncementRoute extends PageRouteInfo<void> {
  const AdminAnnouncementRoute({List<PageRouteInfo>? children})
    : super(AdminAnnouncementRoute.name, initialChildren: children);

  static const String name = 'AdminAnnouncementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminAnnouncementView());
    },
  );
}

/// generated route for
/// [AdminCreateAnnouncementView]
class AdminCreateAnnouncementRoute extends PageRouteInfo<void> {
  const AdminCreateAnnouncementRoute({List<PageRouteInfo>? children})
    : super(AdminCreateAnnouncementRoute.name, initialChildren: children);

  static const String name = 'AdminCreateAnnouncementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminCreateAnnouncementView());
    },
  );
}

/// generated route for
/// [AdminDetailJobCardView]
class AdminDetailJobCardRoute
    extends PageRouteInfo<AdminDetailJobCardRouteArgs> {
  AdminDetailJobCardRoute({
    Key? key,
    required String jobId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminDetailJobCardRoute.name,
         args: AdminDetailJobCardRouteArgs(key: key, jobId: jobId),
         initialChildren: children,
       );

  static const String name = 'AdminDetailJobCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminDetailJobCardRouteArgs>();
      return WrappedRoute(
        child: AdminDetailJobCardView(key: args.key, jobId: args.jobId),
      );
    },
  );
}

class AdminDetailJobCardRouteArgs {
  const AdminDetailJobCardRouteArgs({this.key, required this.jobId});

  final Key? key;

  final String jobId;

  @override
  String toString() {
    return 'AdminDetailJobCardRouteArgs{key: $key, jobId: $jobId}';
  }
}

/// generated route for
/// [AdminDetailUsersCardView]
class AdminDetailUsersCardRoute
    extends PageRouteInfo<AdminDetailUsersCardRouteArgs> {
  AdminDetailUsersCardRoute({
    Key? key,
    required String talentId,
    List<PageRouteInfo>? children,
  }) : super(
         AdminDetailUsersCardRoute.name,
         args: AdminDetailUsersCardRouteArgs(key: key, talentId: talentId),
         initialChildren: children,
       );

  static const String name = 'AdminDetailUsersCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminDetailUsersCardRouteArgs>();
      return WrappedRoute(
        child: AdminDetailUsersCardView(key: args.key, talentId: args.talentId),
      );
    },
  );
}

class AdminDetailUsersCardRouteArgs {
  const AdminDetailUsersCardRouteArgs({this.key, required this.talentId});

  final Key? key;

  final String talentId;

  @override
  String toString() {
    return 'AdminDetailUsersCardRouteArgs{key: $key, talentId: $talentId}';
  }
}

/// generated route for
/// [AdminInvoiceView]
class AdminInvoiceRoute extends PageRouteInfo<void> {
  const AdminInvoiceRoute({List<PageRouteInfo>? children})
    : super(AdminInvoiceRoute.name, initialChildren: children);

  static const String name = 'AdminInvoiceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminInvoiceView());
    },
  );
}

/// generated route for
/// [AdminKelolaClientView]
class AdminKelolaClientRoute extends PageRouteInfo<void> {
  const AdminKelolaClientRoute({List<PageRouteInfo>? children})
    : super(AdminKelolaClientRoute.name, initialChildren: children);

  static const String name = 'AdminKelolaClientRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AdminKelolaClientView());
    },
  );
}

/// generated route for
/// [AdminModerasiBudgetView]
class AdminModerasiBudgetRoute
    extends PageRouteInfo<AdminModerasiBudgetRouteArgs> {
  AdminModerasiBudgetRoute({
    Key? key,
    required Map<String, dynamic> job,
    List<PageRouteInfo>? children,
  }) : super(
         AdminModerasiBudgetRoute.name,
         args: AdminModerasiBudgetRouteArgs(key: key, job: job),
         initialChildren: children,
       );

  static const String name = 'AdminModerasiBudgetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdminModerasiBudgetRouteArgs>();
      return WrappedRoute(
        child: AdminModerasiBudgetView(key: args.key, job: args.job),
      );
    },
  );
}

class AdminModerasiBudgetRouteArgs {
  const AdminModerasiBudgetRouteArgs({this.key, required this.job});

  final Key? key;

  final Map<String, dynamic> job;

  @override
  String toString() {
    return 'AdminModerasiBudgetRouteArgs{key: $key, job: $job}';
  }
}

/// generated route for
/// [AuthView]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthView();
    },
  );
}

/// generated route for
/// [CategoryView]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute({List<PageRouteInfo>? children})
    : super(CategoryRoute.name, initialChildren: children);

  static const String name = 'CategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CategoryView());
    },
  );
}

/// generated route for
/// [ChatView]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ChatView());
    },
  );
}

/// generated route for
/// [ClientDetailJobCardView]
class ClientDetailJobCardRoute
    extends PageRouteInfo<ClientDetailJobCardRouteArgs> {
  ClientDetailJobCardRoute({
    Key? key,
    required String jobId,
    List<PageRouteInfo>? children,
  }) : super(
         ClientDetailJobCardRoute.name,
         args: ClientDetailJobCardRouteArgs(key: key, jobId: jobId),
         initialChildren: children,
       );

  static const String name = 'ClientDetailJobCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClientDetailJobCardRouteArgs>();
      return WrappedRoute(
        child: ClientDetailJobCardView(key: args.key, jobId: args.jobId),
      );
    },
  );
}

class ClientDetailJobCardRouteArgs {
  const ClientDetailJobCardRouteArgs({this.key, required this.jobId});

  final Key? key;

  final String jobId;

  @override
  String toString() {
    return 'ClientDetailJobCardRouteArgs{key: $key, jobId: $jobId}';
  }
}

/// generated route for
/// [ClientEditJobView]
class ClientEditJobRoute extends PageRouteInfo<ClientEditJobRouteArgs> {
  ClientEditJobRoute({
    Key? key,
    required String idJobs,
    List<PageRouteInfo>? children,
  }) : super(
         ClientEditJobRoute.name,
         args: ClientEditJobRouteArgs(key: key, idJobs: idJobs),
         initialChildren: children,
       );

  static const String name = 'ClientEditJobRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClientEditJobRouteArgs>();
      return WrappedRoute(
        child: ClientEditJobView(key: args.key, idJobs: args.idJobs),
      );
    },
  );
}

class ClientEditJobRouteArgs {
  const ClientEditJobRouteArgs({this.key, required this.idJobs});

  final Key? key;

  final String idJobs;

  @override
  String toString() {
    return 'ClientEditJobRouteArgs{key: $key, idJobs: $idJobs}';
  }
}

/// generated route for
/// [ClientInvoiceView]
class ClientInvoiceRoute extends PageRouteInfo<void> {
  const ClientInvoiceRoute({List<PageRouteInfo>? children})
    : super(ClientInvoiceRoute.name, initialChildren: children);

  static const String name = 'ClientInvoiceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ClientInvoiceView());
    },
  );
}

/// generated route for
/// [ClientPostingJobView]
class ClientPostingJobRoute extends PageRouteInfo<void> {
  const ClientPostingJobRoute({List<PageRouteInfo>? children})
    : super(ClientPostingJobRoute.name, initialChildren: children);

  static const String name = 'ClientPostingJobRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ClientPostingJobView());
    },
  );
}

/// generated route for
/// [ClientSearchTalentView]
class ClientSearchTalentRoute extends PageRouteInfo<void> {
  const ClientSearchTalentRoute({List<PageRouteInfo>? children})
    : super(ClientSearchTalentRoute.name, initialChildren: children);

  static const String name = 'ClientSearchTalentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ClientSearchTalentView());
    },
  );
}

/// generated route for
/// [CompleteProfileView]
class CompleteProfileRoute extends PageRouteInfo<void> {
  const CompleteProfileRoute({List<PageRouteInfo>? children})
    : super(CompleteProfileRoute.name, initialChildren: children);

  static const String name = 'CompleteProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CompleteProfileView();
    },
  );
}

/// generated route for
/// [DashboardView]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardView();
    },
  );
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeView());
    },
  );
}

/// generated route for
/// [InitialView]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute({List<PageRouteInfo>? children})
    : super(InitialRoute.name, initialChildren: children);

  static const String name = 'InitialRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitialView();
    },
  );
}

/// generated route for
/// [JobsView]
class JobsRoute extends PageRouteInfo<void> {
  const JobsRoute({List<PageRouteInfo>? children})
    : super(JobsRoute.name, initialChildren: children);

  static const String name = 'JobsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const JobsView());
    },
  );
}

/// generated route for
/// [LoginView]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginView();
    },
  );
}

/// generated route for
/// [NotificationView]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const NotificationView());
    },
  );
}

/// generated route for
/// [PaymentView]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute({List<PageRouteInfo>? children})
    : super(PaymentRoute.name, initialChildren: children);

  static const String name = 'PaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PaymentView());
    },
  );
}

/// generated route for
/// [PinSetupScreenView]
class PinSetupScreenRoute extends PageRouteInfo<PinSetupScreenRouteArgs> {
  PinSetupScreenRoute({
    Key? key,
    VoidCallback? onCompleted,
    VoidCallback? onSkipped,
    List<PageRouteInfo>? children,
  }) : super(
         PinSetupScreenRoute.name,
         args: PinSetupScreenRouteArgs(
           key: key,
           onCompleted: onCompleted,
           onSkipped: onSkipped,
         ),
         initialChildren: children,
       );

  static const String name = 'PinSetupScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PinSetupScreenRouteArgs>(
        orElse: () => const PinSetupScreenRouteArgs(),
      );
      return PinSetupScreenView(
        key: args.key,
        onCompleted: args.onCompleted,
        onSkipped: args.onSkipped,
      );
    },
  );
}

class PinSetupScreenRouteArgs {
  const PinSetupScreenRouteArgs({this.key, this.onCompleted, this.onSkipped});

  final Key? key;

  final VoidCallback? onCompleted;

  final VoidCallback? onSkipped;

  @override
  String toString() {
    return 'PinSetupScreenRouteArgs{key: $key, onCompleted: $onCompleted, onSkipped: $onSkipped}';
  }
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfileView());
    },
  );
}

/// generated route for
/// [RegisterBuyerView]
class RegisterBuyerRoute extends PageRouteInfo<RegisterBuyerRouteArgs> {
  RegisterBuyerRoute({Key? key, String? isRole, List<PageRouteInfo>? children})
    : super(
        RegisterBuyerRoute.name,
        args: RegisterBuyerRouteArgs(key: key, isRole: isRole),
        initialChildren: children,
      );

  static const String name = 'RegisterBuyerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterBuyerRouteArgs>(
        orElse: () => const RegisterBuyerRouteArgs(),
      );
      return RegisterBuyerView(key: args.key, isRole: args.isRole);
    },
  );
}

class RegisterBuyerRouteArgs {
  const RegisterBuyerRouteArgs({this.key, this.isRole});

  final Key? key;

  final String? isRole;

  @override
  String toString() {
    return 'RegisterBuyerRouteArgs{key: $key, isRole: $isRole}';
  }
}

/// generated route for
/// [TalentDetailBulkSetView]
class TalentDetailBulkSetRoute extends PageRouteInfo<void> {
  const TalentDetailBulkSetRoute({List<PageRouteInfo>? children})
    : super(TalentDetailBulkSetRoute.name, initialChildren: children);

  static const String name = 'TalentDetailBulkSetRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TalentDetailBulkSetView());
    },
  );
}

/// generated route for
/// [TalentDetailJobCardView]
class TalentDetailJobCardRoute
    extends PageRouteInfo<TalentDetailJobCardRouteArgs> {
  TalentDetailJobCardRoute({
    Key? key,
    required String jobId,
    List<PageRouteInfo>? children,
  }) : super(
         TalentDetailJobCardRoute.name,
         args: TalentDetailJobCardRouteArgs(key: key, jobId: jobId),
         initialChildren: children,
       );

  static const String name = 'TalentDetailJobCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TalentDetailJobCardRouteArgs>();
      return WrappedRoute(
        child: TalentDetailJobCardView(key: args.key, jobId: args.jobId),
      );
    },
  );
}

class TalentDetailJobCardRouteArgs {
  const TalentDetailJobCardRouteArgs({this.key, required this.jobId});

  final Key? key;

  final String jobId;

  @override
  String toString() {
    return 'TalentDetailJobCardRouteArgs{key: $key, jobId: $jobId}';
  }
}

/// generated route for
/// [TalentJadwalView]
class TalentJadwalRoute extends PageRouteInfo<void> {
  const TalentJadwalRoute({List<PageRouteInfo>? children})
    : super(TalentJadwalRoute.name, initialChildren: children);

  static const String name = 'TalentJadwalRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TalentJadwalView());
    },
  );
}

/// generated route for
/// [TransactionView]
class TransactionRoute extends PageRouteInfo<void> {
  const TransactionRoute({List<PageRouteInfo>? children})
    : super(TransactionRoute.name, initialChildren: children);

  static const String name = 'TransactionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const TransactionView());
    },
  );
}

/// generated route for
/// [UsersView]
class UsersRoute extends PageRouteInfo<void> {
  const UsersRoute({List<PageRouteInfo>? children})
    : super(UsersRoute.name, initialChildren: children);

  static const String name = 'UsersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UsersView());
    },
  );
}
