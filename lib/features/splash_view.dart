import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/chats/view/login_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => (LoginView()),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.L9mlhCtXlAsMk49TX81RrwHaFj?w=286&h=215&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            ),
            SizedBox(height: 20),
            Text(
              'Chatify',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Made with love in Egypt',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
