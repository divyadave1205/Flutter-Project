import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FitBox(),
    );
  }
}

class FitBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitted Box"),
      ),
      body: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: FittedBox(
          child: Image.network(
              "https://th.bing.com/th/id/OIP.sL4Hecm9ukXbwVt_Ki99pgHaEu?w=289&h=184&c=7&o=5&pid=1.7"),
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.topCenter,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
