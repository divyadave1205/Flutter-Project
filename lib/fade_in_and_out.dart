import 'package:flutter/material.dart';

class FadeInOut extends StatefulWidget {
  FadeInOut({Key? key}) : super(key: key);

  @override
  State<FadeInOut> createState() => _FadeInOutState();
}

class _FadeInOutState extends State<FadeInOut> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible == true ? 0 : 1,
          duration: Duration(seconds: 1),
          child: Container(
            color: Colors.green,
            height: 200,
            width: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
    );
  }
}
