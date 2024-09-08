import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(
      {super.key,
      required this.child,
      this.background = 'assets/backgrounds/background.gif',
      this.opacity = 1});

  final Widget child;
  final String background;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          opacity: AlwaysStoppedAnimation(opacity),
          background,
          fit: BoxFit.cover
          ),
      ),
      child,
    ]);
  }
}
