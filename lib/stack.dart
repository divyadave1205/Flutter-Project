import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stacks(),
    );
  }
}

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("stack"),
        ),
        body: Stack(
          alignment: Alignment(0.6, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  """https://www.hdwallpaper.nu/wp-content/uploads/2015/06/1919099.jpg"""),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black45),
              child: Text(
                "Flowers",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
