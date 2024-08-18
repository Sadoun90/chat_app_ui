import 'package:chat_app_ui/features/chats/view/chat_view.dart';
import 'package:chat_app_ui/features/chats/view/login_view.dart';
import 'package:flutter/material.dart';

import 'features/splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
