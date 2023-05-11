import 'package:amibike/pages/home_page.dart';
import 'package:amibike/pages/sign_in_pages.dart';
import 'package:amibike/pages/splash_pages.dart';
import 'package:amibike/pages/on_boarding_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPages(),
        '/on-boarding': (context) => OnBoardingPages(),
        'sign-in': (context) => SignInPages(),
        'home-page': (context) => HomePage()
      },
    );
  }
}
