import 'dart:io';

import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Fraction(),
    );
  }
}

class Fraction extends StatelessWidget {
  const Fraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitted Box"),
      ),
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.white,
        child: Row(
          children: [
            Flexible(
              child: FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: 1,
                widthFactor: 0.25,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: 1,
                widthFactor: 0.50,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
