import 'package:flutter/material.dart';

class WelcomeLogoAnimation extends StatefulWidget {
  const WelcomeLogoAnimation({
    super.key,
  });

  @override
  State<WelcomeLogoAnimation> createState() => _WelcomeLogoAnimationState();
}

class _WelcomeLogoAnimationState extends State<WelcomeLogoAnimation> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2),
      curve: Curves.elasticIn,
      child: Image.asset(
        'assets/inapp/logo.jpg',
      ),
    );
  }
}
