import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ChatView extends StatefulWidget implements AutoRouteWrapper {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    print("chat");
    return Scaffold();
  }
}
