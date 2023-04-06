import 'package:amibike/pages/sign_in_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_amibike_white.png',
                width: 175,
                height: 175,
              ),
              SizedBox(
                height: 140,
              ),
              Text(
                'Keluar Amikom Anti-Ribet!',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'nulis nama, nim, nomor plat, dan jenis motormu karena lupa bawa STNK? ribet! pakai Amibike solusinya!',
                textAlign: TextAlign.center,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: reguler,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPages()),
                    );
                  },
                  child: Text('Lanjut'))
            ],
          ),
        ),
      ),
    );
  }
}
