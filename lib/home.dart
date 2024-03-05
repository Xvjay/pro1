import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:pro1/register.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userNameCon = TextEditingController();
  final passwordCon = TextEditingController();

  void signUp() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userNameCon.text, password: passwordCon.text);

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userNameCon.text, password: passwordCon.text);
    } on FirebaseAuthException catch (e) {
      wrongSignIn(e.code);
    }
  }

  void wrongSignIn(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
              child: Text(
            message,
            style: TextStyle(color: Colors.white),
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.only(bottom: 600),
              height: 100,
              width: 300,
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
              )),
            ),
            Container(
              child: TextField(
                controller: userNameCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'ENTER EMAIL'),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(top: 250),
              height: 50,
              width: 300,
            ),
            Container(
              child: TextField(
                controller: passwordCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'ENTER PASSWORD'),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.only(top: 350),
              height: 50,
              width: 300,
            ),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: signUp,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
              margin: EdgeInsets.only(top: 450, left: 100),
              height: 50,
              width: 100,
            ),
            Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpp()));
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(color: Colors.white),
                  )),
              margin: EdgeInsets.only(top: 550, left: 100),
              height: 50,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
