import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pro1/langs_questions/one/one.dart';
import 'package:pro1/langs_questions/three/three.dart';
import 'package:pro1/langs_questions/two/two.dart';
import 'package:pro1/main.dart';

class span extends StatelessWidget {
  span({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  void signout(BuildContext context) {
    FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyApp()), // Navigate to HomePage
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () => signout(context), icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 500,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 590),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "SPANISH 1",
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => spanOne()));
                                },
                                child: Text("GO LEARN"))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 500,
                color: Colors.red,
                margin: EdgeInsets.only(top: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "SPANISH 2",
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => spanTwo()));
                              },
                              child: Text("GO LEARN"))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 500,
                color: Colors.red,
                margin: EdgeInsets.only(top: 600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "SPANISH 3",
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => spanThree()));
                              },
                              child: Text("GO LEARN"))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 500,
                color: Colors.green,
                margin: EdgeInsets.only(top: 900),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "TEXTBOOK",
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("GO TO TEXTBOOK"))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
