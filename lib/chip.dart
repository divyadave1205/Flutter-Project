import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chips(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Chips extends StatefulWidget {
  @override
  _ChipsState createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  bool selected1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Widget in Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              elevation: 8,
              shadowColor: Colors.pinkAccent,
              deleteIcon: Icon(Icons.cancel),
              deleteIconColor: Colors.black,
              onDeleted: () {
                setState(() {
                  print("object");
                });
              },
              label: Text("Hi"),
              backgroundColor: Colors.pink,
            ),
            InputChip(
              selectedShadowColor: Colors.purpleAccent,
              selected: selected1,
              selectedColor: Colors.purple,
              onSelected: (bool value) {
                setState(() {
                  selected1 = !selected1;
                });
              },
              onDeleted: () {
                selected1 = selected1;
              },
              isEnabled: true,
              disabledColor: Colors.grey,
              backgroundColor: Colors.yellow,
              checkmarkColor: Colors.black,
              shadowColor: Colors.yellowAccent,
              label: Text("Input"),
            ),
            ActionChip(
              backgroundColor: Colors.grey,
              label: Text("Massage"),
              onPressed: () {
                setState(
                  () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Massage..."),
                      ),
                    );
                  },
                );
              },
              elevation: 8,
              padding: EdgeInsets.all(2),
              avatar: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.mode_comment,
                  color: Colors.pink,
                  size: 20,
                ),
              ),
            ),
            FilterChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.filter,
                  size: 20,
                ),
              ),
              backgroundColor: Colors.pink,
              label: Text("Filter"),
              onSelected: (bool value) {
                setState(
                  () {
                    if (value) {
                      value = !selected1;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Filter..."),
                        ),
                      );
                    }
                  },
                );
              },
              selected: selected1,
              selectedColor: Colors.blue,
              shadowColor: Colors.pinkAccent,
              selectedShadowColor: Colors.blueAccent,
            ),
            Wrap(
              children: [
                ChoiceChip(
                  onSelected: (bool value) {
                    value = !selected1;
                  },
                  backgroundColor: Colors.pink[300],
                  shadowColor: Colors.pinkAccent,
                  selectedColor: Colors.yellow,
                  selectedShadowColor: Colors.yellowAccent,
                  label: Text("Yes"),
                  selected: selected1,
                ),
                ChoiceChip(
                  onSelected: (bool value) {
                    value = !selected1;
                  },
                  backgroundColor: Colors.pink[300],
                  shadowColor: Colors.pinkAccent,
                  selectedColor: Colors.yellow,
                  selectedShadowColor: Colors.yellowAccent,
                  label: Text("No"),
                  selected: selected1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
