import 'package:flutter/material.dart';
import 'package:pro1/button/spanish_right.dart';
import 'package:pro1/button/wrong.dart';

class spanTwo extends StatelessWidget {
  const spanTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LEVEL 2"),
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
                      "Which one of the following sentence is the translation to \"Yo soy un hombre\"?"),
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
                            child: Text("soccer player")),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => wrongAnswer()));
                            },
                            child: Text("mail man")),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => rightSpan()));
                            },
                            child: Text("I am the man")),
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
