import 'package:flutter/material.dart';

class MyDensity extends StatelessWidget {
  const MyDensity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VisualDen(),
    );
  }
}

class VisualDen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VisualDensity density = Theme.of(context).visualDensity;
    return Scaffold();
  }
}
