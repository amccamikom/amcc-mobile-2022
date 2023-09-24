import 'dart:async';

import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
  

    Timer(Duration(seconds: 3),
        (() => Navigator.pushNamed(context, '/on-boarding')));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 166,
          height: 202,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/logo_amibike_purple.png',
          ))),
        ),
      ),
    );
  }
}
