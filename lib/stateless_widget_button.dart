import 'package:flutter/material.dart';

class Counters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Counter()),
      ),
      title: "Flutter tutorial",
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return Text("count : $count");
  }
}

class CounterIncreament extends StatelessWidget {
  const CounterIncreament({required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("increament"),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increament() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncreament(onPressed: _increament),
        SizedBox(width: 16),
        CounterDisplay(count: _counter)
      ],
    );
  }
}
