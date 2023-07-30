import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeLogoAnimation extends StatefulWidget {
  const WelcomeLogoAnimation({
    super.key,
  });

  @override
  State<WelcomeLogoAnimation> createState() => _WelcomeLogoAnimationState();
}

class _WelcomeLogoAnimationState extends State<WelcomeLogoAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: const Image(
        image: AssetImage('assets/inapp/logo.jpg'),
      ),
    );
  }
}
