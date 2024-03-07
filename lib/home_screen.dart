import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pro1/firebase/get_data.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  final user = FirebaseAuth.instance.currentUser!;

  Future<String?> getID() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('users')
        .where('uid', isEqualTo: user.uid)
        .get();

    return snapshot.docs.first.id;
  }

  @override
  void initState() {
    super.initState();
  }

  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(""),
          Expanded(
              child: FutureBuilder(
            future: getID(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // Call getData and use its result
                return GetData(docID: snapshot.data!);
              }
              return Text("");
            },
          )),
        ],
      )),
    );
  }
}
