import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class AllConfetti extends StatefulWidget {
  final Widget child;
  const AllConfetti({Key key, @required this.child}) : super(key: key);

  @override
  State<AllConfetti> createState() => _AllConfettiState();
}

class _AllConfettiState extends State<AllConfetti> {
  ConfettiController controller;
  void initState() {
    super.initState();
    controller = ConfettiController(duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConfettiWidget(
          confettiController: controller,
        ),
        widget.child,
      ],
    );
  }
}

class ConfettiController {
}
