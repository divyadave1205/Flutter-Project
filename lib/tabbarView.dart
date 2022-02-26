import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabbars(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Tabbars extends StatefulWidget {
  const Tabbars({Key? key}) : super(key: key);

  @override
  _TabbarsState createState() => _TabbarsState();
}

class _TabbarsState extends State<Tabbars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: false,
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.phone_iphone),
                text: "Tab 2",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Page 1"),
            ),
            Center(
              child: Text("Page 2"),
            )
          ],
        ),
      ),
    );
  }
}
