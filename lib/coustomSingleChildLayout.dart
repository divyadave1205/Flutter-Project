import 'package:flutter/material.dart';

class MyChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChild(),
    );
  }
}

class SingleChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Single Child Layout",
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 600,
          child: CustomSingleChildLayout(
            delegate: MySingleChild(widgetSize: size / 7),
            child: Container(
              height: 100,
              color: Colors.black,
              child: Text(
                "hi ",
                style: TextStyle(color: Colors.deepOrange, fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MySingleChild extends SingleChildLayoutDelegate {
  MySingleChild({this.widgetSize});
  final Size? widgetSize;
  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.expand(
      width: 120,
      height: 120,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(
      widgetSize!.width / 2,
      widgetSize!.height / 2,
    );
  }

  @override
  bool shouldRelayout(MySingleChild oldDelegate) {
    return widgetSize != oldDelegate.widgetSize;
  }
}
