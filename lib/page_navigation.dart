import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).push(createRoute());
            });
          },
          child: Text("Go to Second Page!!"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Second Page"),
      ),
    );
  }
}

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return SecondPage();
    },
    transitionsBuilder: (
      context,
      animation,
      secondaryAnimation,
      child,
    ) {
      const begin = Offset(0, 1);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(
        begin: begin,
        end: end,
      ).chain(
        CurveTween(curve: curve),
      );
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
