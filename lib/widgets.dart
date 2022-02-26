import 'package:flutter/material.dart';

/// widgets help to make modern framework for app.
/// we can run an app by runApp() function.
/// there are two types of widget StatelessWidget and statefulwidget.
///widget main job is to emplement build() function.
///center:-to put the text in center of page.
///text:-to edit styled text in your application.
///row:- for horizontal and coloumn:- for vertical
///Stack:- to arrangr widget each top of them.
///container:-creates one ractangular element.it can decorate with BoxDecoration.background, border and shadow.
class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Practise1(),
    );
  }
}

class Practise1 extends StatelessWidget {
  const Practise1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("hello world!!"),
    ));
  }
}
