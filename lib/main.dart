import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        title: Text("Dice Roll App By Satu Mitro"),
        backgroundColor: Colors.red,
      ),
      body: dicepage(),
    ),
  ));
}

class dicepage extends StatefulWidget {
  dicepage({Key? key}) : super(key: key);

  @override
  _dicepageState createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  int leftDiceNumber = 1;
  int rightDicenumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            children: [
              Expanded(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                // padding: EdgeInsets.fromLTRB(10, 120, 10, 120),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset(
                  "assets/dice$leftDicenumber.png",
                ),
              )),
              Expanded(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                // padding: EdgeInsets.fromLTRB(10, 120, 10, 120),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset(
                  "assets/dice$rightDicenumber.png",
                ),
              )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            child: FlatButton(
              
              onPressed: () {
                changeDiceFace();
              },
              child: const Text(
                "Roll Dice",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
