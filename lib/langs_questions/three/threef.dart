import 'package:flutter/material.dart';
import 'package:pro1/button/french_right.dart';
import 'package:pro1/button/wrong.dart';

class frenThree extends StatelessWidget {
  const frenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LEVEL 3"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 600,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                      "If someone asks you\"quelle heure est-il?\" what are they asking for?"),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => wrongAnswer()));
                            },
                            child: Text("your name")),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => wrongAnswer()));
                            },
                            child: Text("your age")),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => rightFrench()));
                            },
                            child: Text("For the time")),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
