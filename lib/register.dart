import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpp extends StatefulWidget {
  SignUpp({Key? key}) : super(key: key);
  @override
  _SignUppState createState() => _SignUppState();
}

class _SignUppState extends State<SignUpp> {
  List<String> lans = ['Spanish', 'French'];
  String? selectedLans = 'Spanish';
  final userNameCon = TextEditingController();
  final passwordCon = TextEditingController();
  final confirmPass = TextEditingController();
  final fNameCon = TextEditingController();
  final lNameCon = TextEditingController();

  void signUpp() async {
    if (confirmPass.text == passwordCon.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userNameCon.text, password: passwordCon.text);

      addUserDetails(fNameCon.text.trim(), lNameCon.text.trim(),
          userNameCon.text.trim(), selectedLans!);
      Navigator.pop(context);
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(
                ("Passwords are not the same"),
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      );
    }
  }

  Future<void> addUserDetails(
      String firstName, String lastName, String email, String lang) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'langaue': lang,
      'uid': FirebaseAuth.instance.currentUser!.uid
    });
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
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 40),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: userNameCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ENTER EMAIL',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 150),
              height: 50,
              width: 300,
            ),
            Container(
              child: TextField(
                controller: passwordCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ENTER PASSWORD',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 250),
              height: 50,
              width: 300,
            ),
            Container(
              child: TextField(
                controller: confirmPass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'CONFIRM PASSWORD',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 350),
              height: 50,
              width: 300,
            ),
            Container(
              child: TextField(
                controller: fNameCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ENTER FIRST NAME',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 450),
              height: 50,
              width: 300,
            ),
            Container(
              child: TextField(
                controller: lNameCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ENTER LAST NAME',
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 550),
              height: 50,
              width: 300,
            ),
            Container(
              child: DropdownButton<String>(
                value: selectedLans,
                items: lans
                    .map((lan) => DropdownMenuItem<String>(
                          value: lan,
                          child: Text(lan),
                        ))
                    .toList(),
                onChanged: (lan) {
                  setState(() {
                    selectedLans = lan;
                  });
                },
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.only(top: 650),
              height: 50,
              width: 300,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: signUpp,
                child: Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              margin: EdgeInsets.only(top: 750, left: 100),
              height: 50,
              width: 100,
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "BACK",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              margin: EdgeInsets.only(top: 850, left: 100),
              height: 50,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
