import 'package:flutter/material.dart';

class Flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Button(),
      )),
      title: "Flutter tutorial",
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector

        ///Gestures: to make buttons.
        (
      onTap: () {
        print("My Button Was Tapped");
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: Center(
          child: Text("Engage"),
        ),
      ),
    );
  }
}
