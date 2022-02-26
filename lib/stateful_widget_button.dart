import 'package:flutter/material.dart';

class MyWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: MyWidget(),
      )),
      title: "My Widget",
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _myWidget = 0;
  void _increament() {
    setState(() {
      _myWidget++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increament,
          child: Text("Increament"),
        ),
        SizedBox(width: 16),
        Text("this many time pressed:$_myWidget"),
      ],
    );
  }
}
