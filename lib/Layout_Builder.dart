import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Layout(),
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Builder"),
      ),
      body: Container(
        child: Row(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 500) {
                  return Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.pink,
                    ),
                  );
                }
              },
            ),
            Column(
              children: [
                MediaQuery(
                  data: MediaQuery.of(context).removePadding(
                    removeBottom: false,
                    removeLeft: false,
                    removeRight: false,
                    removeTop: false,
                  ),
                  child: Text("hello"),
                ),
                MediaQuery(
                  data: MediaQuery.of(context).removeViewInsets(
                    removeBottom: false,
                    removeLeft: false,
                    removeRight: false,
                    removeTop: false,
                  ),
                  child: Text("How are you?"),
                ),
                MediaQuery(
                  data: MediaQuery.of(context).removeViewPadding(
                    removeBottom: false,
                    removeLeft: false,
                    removeRight: false,
                    removeTop: false,
                  ),
                  child: Text("why?"),
                ),
                MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    accessibleNavigation: true,
                    alwaysUse24HourFormat: true,
                    boldText: true,
                    devicePixelRatio: 10,
                    disableAnimations: true,
                    highContrast: true,
                    invertColors: true,
                    navigationMode: NavigationMode.directional,
                    padding: EdgeInsets.all(10),
                    platformBrightness: Brightness.dark,
                    size: Size.zero,
                    systemGestureInsets: EdgeInsets.all(10),
                    textScaleFactor: 10,
                    viewInsets: EdgeInsets.all(10),
                    viewPadding: EdgeInsets.all(10),
                  ),
                  child: Text("hi"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
