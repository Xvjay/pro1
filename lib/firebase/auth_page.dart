import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro1/home.dart';
import 'package:pro1/home_screen.dart';

class AUTH extends StatelessWidget {
  const AUTH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Home_screen();
          } else {
            return HomePage();
          }
        },
      ),
    );
  }
}
