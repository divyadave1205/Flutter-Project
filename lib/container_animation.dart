import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  double height = 50;
  double width = 50;
  Color color = Colors.green;
  BorderRadius borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Demo"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: color,
          ),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            width = random.nextInt(300).toDouble();
            height = random.nextInt(300).toDouble();
            color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
            borderRadius = BorderRadius.circular(
              random.nextInt(100).toDouble(),
            );
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
