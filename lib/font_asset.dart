import 'package:flutter/material.dart';

class Fonts extends StatelessWidget {
  const Fonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Font Assets",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "Font Assets For Raleway",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Raleway",
                  package: "awesome_package",
                ),
              ),
              Text(
                "Font Assets For RobotoMono",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "RobotoMono",
                  package: "awesome_package",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
