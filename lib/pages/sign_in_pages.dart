import 'package:amibike/data/datasources/firebase_remote_datasource.dart';
import 'package:amibike/pages/home_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SignInPages extends StatefulWidget {
  const SignInPages({super.key});

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  TextEditingController? usernameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? confirmationPasswordController;

  bool hidePassword = true;
  bool hideConfirmationPassword = true;

  @override
  void initState() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmationPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController!.dispose();
    emailController!.dispose();
    passwordController!.dispose();
    confirmationPasswordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 48,
              ),
              Image.asset(
                'assets/logo_amibike_purple.png',
                width: 166,
                height: 202,
              ),
              SizedBox(
                height: 48,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                controller: usernameController,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(hidePassword
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined),
                    onPressed: (() => setState(() {
                          hidePassword = !hidePassword;
                        })),
                  ),
                ),
                obscureText: hidePassword,
                controller: passwordController,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password Confirmation',
                  hintText: 'Enter your Password Confirmation',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                obscureText: hideConfirmationPassword,
                controller: confirmationPasswordController,
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameController!.text.isEmpty ||
                      emailController!.text.isEmpty ||
                      passwordController!.text.isEmpty ||
                      confirmationPasswordController!.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Semua field harus diisi'),
                          );
                        });
                  } else {
                    FirebaseRemoteDatasource().signUpWithEmail(
                      username: usernameController!.text,
                      email: emailController!.text,
                      password: passwordController!.text,
                    );

                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) {
                      return HomePage();
                    }), (route) => false);
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                },
                child: Text('Register'.toUpperCase()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor1, //warna button
                  minimumSize: Size(200, 40), //size w & h
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
