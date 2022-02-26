import 'package:flutter/material.dart';

class MyRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AspectRatios(),
    );
  }
}

class AspectRatios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aspected Ratio"),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.green,
            ),
          ),
        ));
  }
}
