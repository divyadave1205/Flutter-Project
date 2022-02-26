import 'package:flutter/material.dart';

class MyPrac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Practice(),
    );
  }
}

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final GlobalKey _key = GlobalKey();
  bool _offStage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OffStage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Offstage(
            offstage: !_offStage,
          ),
        ],
      ),
    );
  }
}
