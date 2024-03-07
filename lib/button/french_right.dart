import 'package:flutter/material.dart';
import 'package:pro1/langs/french.dart';

class rightFrench extends StatelessWidget {
  const rightFrench({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONGRATS"),
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
                  Text("Horray you got the answer right!!"),
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
                                      builder: (context) => French()));
                            },
                            child: Text("continue")),
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
