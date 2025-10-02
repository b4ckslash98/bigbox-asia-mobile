import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouteLoggingObserver extends AutoRouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('============ ROUTE PUSHED ============');
    debugPrint('New route: ${route.settings.name}');
    debugPrint('Previous route: ${previousRoute?.settings.name}');
    debugPrint('Arguments: ${route.settings.arguments}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint('============ ROUTE POPPED ============');
    debugPrint('Popped route: ${route.settings.name}');
    debugPrint('Previous route: ${previousRoute?.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint('============ ROUTE REPLACED ============');
    debugPrint('New route: ${newRoute?.settings.name}');
    debugPrint('Old route: ${oldRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint('============ ROUTE REMOVED ============');
    debugPrint('Removed route: ${route.settings.name}');
    debugPrint('Previous route: ${previousRoute?.settings.name}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('============ TAB ROUTE INITIALIZED ============');
    debugPrint('Tab route: ${route.name}');
    debugPrint('Previous tab: ${previousRoute?.name}');
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    debugPrint('============ TAB ROUTE CHANGED ============');
    debugPrint('New tab: ${route.name}');
    debugPrint('Previous tab: ${previousRoute.name}');
    super.didChangeTabRoute(route, previousRoute);
  }
}
