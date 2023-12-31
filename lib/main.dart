import 'package:flutter/material.dart';
import 'package:twitter_clone/Screens/LogIn.dart';
import 'package:twitter_clone/Screens/sign_up.dart';
import 'package:twitter_clone/Screens/default_scrren.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const DefaultScreen(),
        '/sign-up':(context) => const SignUpScreen(),
        '/log-in':(context) => const LogInScreen(),
      },
      theme: ThemeData(fontFamily: 'WorkSans'),
    );
  }
}
