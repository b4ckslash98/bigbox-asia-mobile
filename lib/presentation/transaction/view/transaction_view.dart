import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TransactionView extends StatefulWidget implements AutoRouteWrapper {
  const TransactionView({super.key});

  @override
  State<TransactionView> createState() => _TransactionViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _TransactionViewState extends State<TransactionView> {
  @override
  Widget build(BuildContext context) {
    print("transaction");
    return Scaffold();
  }
}
