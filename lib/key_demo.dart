import 'package:flutter/material.dart';

class KeyDemo extends StatelessWidget {
  const KeyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            body: Container(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("asda")));
              },
            ),
          ),
        ),
        Expanded(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(SnackBar(content: Text("asad")));
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("divya")));
              },
            ),
          ),
        )
      ],
    );
  }
}
