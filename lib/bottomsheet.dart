import 'package:flutter/material.dart';

class MyDialouges extends StatelessWidget {
  const MyDialouges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleDialouge(),
    );
  }
}

class SimpleDialouge extends StatefulWidget {
  const SimpleDialouge({Key? key}) : super(key: key);

  @override
  _SimpleDialougeState createState() => _SimpleDialougeState();
}

class _SimpleDialougeState extends State<SimpleDialouge> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Bottom Sheet Example"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Bottom Sheet"),
          onPressed: () {

            scaffoldKey.currentState!.showBottomSheet<void>(
              (BuildContext context) {
                return Sheet();
              },
            );
          },
        ),
      ),
    );
  }
}

class Sheet extends StatefulWidget {
  const Sheet({Key? key}) : super(key: key);

  @override
  _SheetState createState() => _SheetState();
}

class _SheetState extends State<Sheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("BottomSheet"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Text("Close Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
