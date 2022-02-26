import 'package:flutter/material.dart';

class MyPopup extends StatelessWidget {
  const MyPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PopButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PopButton extends StatefulWidget {
  const PopButton({Key? key}) : super(key: key);

  @override
  _PopButtonState createState() => _PopButtonState();
}

class _PopButtonState extends State<PopButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu Button"),
        actions: [
          PopupMenuButton(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Text("Menu"),
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  padding: EdgeInsets.all(8),
                  child: TextButton(
                    child: Text("First"),
                    onPressed: () {
                      setState(
                        () {
                          Future.value().then(
                            (value) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      body: Center(
                                        child: Text(
                                          "This is First Page",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: TextButton(
                    child: Text("Second"),
                    onPressed: () {
                      setState(
                        () {
                          Future.value().then(
                            (value) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      body: Center(
                                        child: Text(
                                          "This is Second Page",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  value: 2,
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
