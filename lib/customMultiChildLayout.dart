import 'package:flutter/material.dart';

class MyChildm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiChild(),
    );
  }
}

class MultiChild extends StatefulWidget {
  @override
  _MultiChildState createState() => _MultiChildState();
}

class _MultiChildState extends State<MultiChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Multy Child Layout"),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            child: CustomMultiChildLayout(
              delegate: MyMultiChildDelegate(position: Offset.zero),
              children: [
                LayoutId(
                  id: 1,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                LayoutId(
                    id: 2,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyMultiChildDelegate extends MultiChildLayoutDelegate {
  MyMultiChildDelegate({this.position});
  final Offset? position;

  @override
  void performLayout(Size size) {
    Size leadingSize = Size.zero;
    if (hasChild(1)) {
      leadingSize = layoutChild(
        1,
        BoxConstraints.loose(size),
      );
    }
    if (hasChild(2)) {
      final secondSize = layoutChild(
        2,
        BoxConstraints(
          maxHeight: size.height,
          maxWidth: size.width,
        ),
      );
      positionChild(
        2,
        Offset(
          leadingSize.width,
          size.height / 2 - secondSize.height / 2,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(MyMultiChildDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
