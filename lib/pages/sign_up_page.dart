import 'package:amibike/pages/home_page.dart';
import 'package:amibike/pages/sign_in_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
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
                  suffixIcon: Icon(Icons.remove_red_eye),
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
                  backgroundColor: backgroundColor1, //warna button
                  minimumSize: Size(200, 40), //size w & h
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPages(),
                    ),
                  );
                },
                child: Text(
                  'Daftar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
