import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  const MyFlatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlattedButton(),
      title: "Flat Button",
      debugShowCheckedModeBanner: false,
    );
  }
}

class FlattedButton extends StatefulWidget {
  @override
  _FlattedButtonState createState() => _FlattedButtonState();
}

class _FlattedButtonState extends State<FlattedButton> {
  String txt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flatted"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              child: Text("Home Button"),
              onPressed: () {
                setState(() {
                  txt = "Home Button Tapped";
                });
              },
            ),
            TextButton(
              child: Text("Profile Button"),
              onPressed: () {
                setState(() {
                  txt = "Profile Button Tapped";
                });
              },
            ),
            TextButton(
              child: Text("Settings Button"),
              onPressed: () {
                setState(() {
                  txt = "Settings Button Tapped";
                });
              },
            ),
            Text(
              txt,
              textScaleFactor: 2,
            )
          ],
        ),
      ),
    );
  }
}
