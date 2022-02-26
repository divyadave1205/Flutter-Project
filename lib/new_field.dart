import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewField(),
    );
  }
}

class NewField extends StatefulWidget {
  const NewField({Key? key}) : super(key: key);

  @override
  _NewFieldState createState() => _NewFieldState();
}

class _NewFieldState extends State<NewField> {
  final String title = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new field"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                initialValue: "initial Value",
                maxLength: 20,
                decoration: InputDecoration(
                  icon: Icon(Icons.favorite),
                  labelText: "Label text",
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  helperText: "Helper Text",
                  suffixIcon: Icon(
                    Icons.check_circle,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange,
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                initialValue: "initial Value",
                maxLength: 20,
                decoration: InputDecoration(
                  icon: Icon(Icons.favorite),
                  labelText: "Label text",
                  helperText: "Helper Text",
                  errorText: "error Text",
                  suffixIcon: Icon(
                    Icons.error,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
