import 'package:amibike/pages/home_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          //padding buat bungkus di listview
          padding: EdgeInsets.all(25),
          children: [
            SizedBox(height: 100),
            // image for logo
            Image.asset(
              'assets/logo_amibike_purple.png',
              width: 166,
              height: 202,
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Login'.toUpperCase()),
              style: ElevatedButton.styleFrom(
                primary: backgroundColor1, //warna button
                minimumSize: Size(200, 40), //size w & h
              ),
            )
          ],
        ),
      ),
    );
  }
}