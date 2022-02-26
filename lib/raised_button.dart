import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Raised Button",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String isTapped = "Button";
  void _onPressed(String value) {
    setState(() {
      isTapped = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Button"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(isTapped),
                ElevatedButton(
                  onPressed: () {
                    return _onPressed("Hello Divya");
                  },
                  child: Text("Click Me"),
                ),
              ],
            ),
          ),
        ));
  }
}
