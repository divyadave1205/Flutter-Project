import 'package:flutter/material.dart';

class MyOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Orianted(),
    );
  }
}

class Orianted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oriented "),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                OrientationBuilder(
                  builder: (context, oriantion) {
                    return GridView.count(
                      crossAxisCount: oriantion == Orientation.portrait ? 2 : 3,
                      children: List.generate(
                        100,
                        (index) {
                          return Center(
                            child: Text("Item $index",
                                style: Theme.of(context).textTheme.headline1),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
