import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CategoryView extends StatefulWidget implements AutoRouteWrapper {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    print("category");
    return Scaffold();
  }
}
