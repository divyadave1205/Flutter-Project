import 'package:flutter/material.dart';

class Myin extends StatelessWidget {
  const Myin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ind(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ind extends StatefulWidget {
  const Ind({Key? key}) : super(key: key);

  @override
  _IndState createState() => _IndState();
}

class _IndState extends State<Ind> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indicator"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Show Dialog and Go To Next Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Future.delayed(Duration(seconds: 3)).then(
              (value) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SecondScreen();
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Second Screen"),
            ElevatedButton(
              onPressed: () {
                Future.value().then(
                  (value) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Ind();
                        },
                      ),
                    );
                  },
                );
              },
              child: Text("Return To Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
