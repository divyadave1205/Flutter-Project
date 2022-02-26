import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded(
      child: Center(
        child: Text("Hello World!"),
        heightFactor: 670.0,
        widthFactor: 500.0,
      ),
    );
    return MaterialApp(
      ///most of data of the app is comes from material app thats why we define all classes in material app.

      home: MyScaffold(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      ///container creates onr ractangular element at the top of the screen.
      ///we can decorate it with box decoration.

      height: 60.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            color: Colors.white,
            tooltip: "Navigation Menu",
            onPressed: () {},
            alignment: Alignment.center,
            autofocus: false,
            constraints: BoxConstraints(maxHeight: 700.9),
            disabledColor: Colors.amber,
            enableFeedback: false,
            focusColor: Colors.black,
            highlightColor: Colors.white,
          ),
          Expanded(
            child: title,
          ),

          /// expanded method contains any blank space of screen which is not consumed by any other children.
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
            tooltip: "search",
            color: Colors.white,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        ///mainAxisAlignment: center :keeps all children in center.
        ///spaceAround:keeps all children in equal space.
        ///end:keeps all children at the and of appbar.
        ///spaceBetween:place same freesize between all children.
        ///spaceEvenly:place same place before and after of every children.
        ///start:keeps all children at the start of appbar.
        mainAxisSize: MainAxisSize.max,

        ///mainAxisSize:increses size of container according to numbers of widgets.
        textBaseline: TextBaseline.alphabetic,

        /// arrange text nicely in container.
        crossAxisAlignment: CrossAxisAlignment.center,

        ///center:keeps all children in center.
        ///end:keeps all children in end.
        ///start:keeps all children in start.
        ///stretch:keeps only text in start.
        /// baseline:arrange text nicely in container.
        textDirection: TextDirection.ltr,

        /// adjusts children left to right or right to left(horizontal).
        verticalDirection: VerticalDirection.up,

        /// adjusts children up to down or down to up(vertical).
        ///
      ),
      alignment: Alignment.center,

      ///adjust text.
      clipBehavior: Clip.none,

      ///color: color and decoration cant be used at aone time.
      constraints: BoxConstraints.loose(
        Size(500.0, 50.0),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              "AppBar",
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
            flex: 5,
            // flex: devides screen in flex number ratio.
            child: Container(
              child: Text("Hello World!"),
              color: Colors.pink,
              width: 500.0,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text("Hello frnds!"),
              color: Colors.blue,
              width: 500.0,
            ),
          ),
        ],
      ),
    );
  }
}
