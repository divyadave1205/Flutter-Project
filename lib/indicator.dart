import 'package:flutter/material.dart';

class MyIndicator extends StatelessWidget {
  const MyIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Indicate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Indicate extends StatefulWidget {
  const Indicate({Key? key}) : super(key: key);

  @override
  _IndicateState createState() => _IndicateState();
}

class _IndicateState extends State<Indicate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indicator Example"),
      ),
      body: Center(
        child: Column(
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
            ),
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
