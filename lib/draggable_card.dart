import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class Dragging extends StatelessWidget {
  const Dragging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DragCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }
}

class DragCard extends StatefulWidget {
  const DragCard({Key? key, this.child}) : super(key: key);
  final Widget? child;
  @override
  State<DragCard> createState() => _DragCardState();
}

class _DragCardState extends State<DragCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Alignment> animation;
  Alignment dragAlignment = Alignment.center;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    controller.addListener(() {
      setState(() {
        dragAlignment = animation.value;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onPanDown: (details) {
          controller.stop();
        },
        onPanUpdate: (details) {
          setState(() {
            dragAlignment += Alignment(
              details.delta.dx / (size.width / 2),
              details.delta.dy / (size.width / 2),
            );
          });
        },
        onPanEnd: (details) {
          runAnimation(details.velocity.pixelsPerSecond, size);
        },
        child: Align(
          alignment: dragAlignment,
          child: Card(
            child: widget.child,
          ),
        ),
      ),
    );
  }

  void runAnimation(Offset pixelsPerSeconds, Size size) {
    animation = controller.drive(
      AlignmentTween(
        begin: dragAlignment,
        end: Alignment.center,
      ),
    );
    final unitsPerSecondsx = pixelsPerSeconds.dx / size.width;
    final unitsPerSecondsy = pixelsPerSeconds.dy / size.height;
    final unitsPerSeconds = Offset(unitsPerSecondsx, unitsPerSecondsy);
    final unitVelocity = unitsPerSeconds.distance;
    const spring = SpringDescription(mass: 30, stiffness: 1, damping: 1);
    final simulation = SpringSimulation(spring, 1, 1, -unitVelocity);
    controller.animateWith(simulation);
    controller.reset();
    controller.forward();
  }
}
