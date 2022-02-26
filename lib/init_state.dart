import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyInitState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Home(),
        ),
      ),
    );
  }
}

getString() {
  return "This is the welcome String!";
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    print("createState");
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String? welcome;

  Widget? child;
  int _counter = 0;
  void _increamentcounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    welcome = getString();
    child = Container(
      color: Colors.red,
      height: 50,
      width: 50,
    );
    super.initState();
    print("initState");
    _counter++;
  }

  @override
  void didChangeDependencies() {
    print("Change Dependencies Called");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("Build called");
    return Scaffold(
      appBar: AppBar(
        title: Text(welcome!),
        backgroundColor: Colors.green,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text(
          'asdasd',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          setState(() {
            welcome = "asdasdad";
          });
        },
      )),
    );
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    print("Did Update Widget Called");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}
