import 'package:amibike/data/datasources/firebase_remote_datasource.dart';
import 'package:amibike/pages/home_page.dart';
import 'package:amibike/pages/sign_in_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
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
                controller: emailController,
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
                controller: passwordController,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  FirebaseRemoteDatasource().loginWithEmail(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                },
                child: Text('Login'.toUpperCase()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor1, //warna button
                  minimumSize: Size(200, 40), //size w & h
                ),
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPages(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
