import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../lib.dart';
part 'router.gr.dart';

AppRouter router = di();

extension AppRouterExt on AppRouter {
  BuildContext? get context => navigatorKey.currentContext;
}

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/dashboard', // Dashboard path
          page: DashboardRoute.page,
          guards: [
            // AuthGuard(),
          ],
          children: [
            AutoRoute(
              page: HomeRoute.page,
              maintainState: false,
            ),
            AutoRoute(
              page: JobsRoute.page,
              maintainState: false,
              guards: const [
                // AuthGuard(),
              ],
            ),
            AutoRoute(
              page: ProfileRoute.page,
              maintainState: false,
              guards: const [
                // AuthGuard(),
              ],
            ),
            AutoRoute(
              page: NotificationRoute.page,
              maintainState: false,
              guards: const [
                // AuthGuard(),
              ],
            ),
            AutoRoute(
              page: UsersRoute.page,
              maintainState: false,
              guards: const [
                // AuthGuard(),
              ],
            ),
            AutoRoute(
              page: ClientPostingJobRoute.page,
              guards: const [
                // AuthGuard(),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: AuthRoute.page,
          children: [
            AutoRoute(
              page: LoginRoute.page,
              guards: const [
                // GuestGuard(),
              ],
            ),
            AutoRoute(
              page: RegisterBuyerRoute.page,
              guards: const [
                // GuestGuard(),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: AddTalentRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AddAdminRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminAnnouncementRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminCreateAnnouncementRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminInvoiceRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminDetailJobCardRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminModerasiBudgetRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminDetailUsersCardRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: ClientInvoiceRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: ClientDetailJobCardRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: TalentDetailJobCardRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: TalentJadwalRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: TalentDetailBulkSetRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: CompleteProfileRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: ClientEditJobRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: ClientSearchTalentRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: AdminKelolaClientRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: PinSetupScreenRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          page: PaymentRoute.page,
          guards: const [
            // AuthGuard(),
          ],
        ),
        AutoRoute(
          path: '/',
          initial: true,
          page: InitialRoute.page,
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
}
