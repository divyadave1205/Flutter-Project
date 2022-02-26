import 'package:flutter/material.dart';

class MyTip extends StatelessWidget {
  const MyTip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tools(),
    );
  }
}

class Tools extends StatefulWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tool Tips"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
              excludeFromSemantics: true,
              waitDuration: Duration(seconds: 1),
              showDuration: Duration(seconds: 2),
              padding: EdgeInsets.all(5),
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              message: "My Account",
              textStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
              child: TextButton(
                child: Icon(
                  Icons.account_box,
                  size: 100,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Tooltip(
              message: 'My Account',
              child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.account_box,
                  size: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
