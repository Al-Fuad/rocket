import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(
      {super.key,
      required this.child,
      this.background = 'assets/backgrounds/background.gif'});

  final Widget child;
  final String background;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          background,
          fit: BoxFit.fitHeight
          ),
      ),
      child,
    ]);
  }
}
