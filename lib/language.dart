import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  bool isSelected = false;

  void tap() {
    setState(() {
      isSelected = !isSelected; // Simplified toggling of isSelected
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
                "Choose Language",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              )),
            ),
            GestureDetector(
              onTap: tap,
              child: Container(
                child: Text(
                  "German",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: isSelected == true
                        ? Border.all(width: 2, color: Colors.blue)
                        : null),
                margin: EdgeInsets.only(top: 250),
                height: 50,
                width: 300,
              ),
            ),
            GestureDetector(
              onTap: tap,
              child: Container(
                child: Text(
                  "Spanish",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 330),
                height: 50,
                width: 300,
              ),
            ),
            Container(
              child: Text(
                "English",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(top: 420),
              height: 50,
              width: 300,
            ),
            Container(
              child: Text(
                "Russian",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(top: 510),
              height: 50,
              width: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 650),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 110,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown),
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
