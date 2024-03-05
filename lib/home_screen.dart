import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});
  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),
      body: Center(child: Text("LOGGED IN")),
    );
  }
}
