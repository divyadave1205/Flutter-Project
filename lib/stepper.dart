import 'package:flutter/material.dart';

class MyStep extends StatefulWidget {
  const MyStep({Key? key}) : super(key: key);

  @override
  _MyStepState createState() => _MyStepState();
}

class _MyStepState extends State<MyStep> {
  int currentStep = 0;

  List<Step> steps = [
    Step(
      title: Text("First Step"),
      content: Center(
        child: Text("First Step Content"),
      ),
    ),
    Step(
      title: Text("Second Step"),
      content: Center(
        child: Text("Second Step Content"),
      ),
    ),
    Step(
      title: Text("Third Step"),
      content: Center(
        child: Text("Third Step Content"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(builder: (context) {
          return Stepper(
            steps: steps,
            currentStep: currentStep,
            onStepCancel: () {
              if (currentStep > 0) {
                setState(() {
                  currentStep -= 1;
                });
              } else if (currentStep == 0) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Text('First Step, Cant go back.'),
                      );
                    });
              }
            },
            onStepContinue: () {
              if (currentStep < steps.length - 1) {
                setState(() {
                  currentStep += 1;
                });
              } else if (currentStep == steps.length - 1) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Text('Data Submitted'),
                      );
                    });
              }
            },
          );
        }),
      ),
    );
  }
}
