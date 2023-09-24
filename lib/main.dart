import 'package:amibike/data/datasources/firebase_remote_datasource.dart';
import 'package:amibike/pages/home_page.dart';
import 'package:amibike/pages/sign_up_page.dart';
import 'package:amibike/pages/splash_pages.dart';
import 'package:amibike/pages/on_boarding_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOnboradingPass = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/': (context) => SplashPages(),
      //   '/on-boarding': (context) => OnBoardingPages(),
      // },
      home: StreamBuilder<User?>(
        stream: FirebaseRemoteDatasource().authState,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return isOnboradingPass ? SignUpPage() : SplashPages();
          } else {
            return HomePage();
          }
        },
      ),
    );
  }
}
