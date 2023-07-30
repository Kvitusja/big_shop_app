import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class WelcomeTextAnimation extends StatelessWidget {
  final String firstText;
  final String secondText;
  const WelcomeTextAnimation({
    super.key, required this.colorizeTextStyle, required this.colorizedColour, required this.firstText, required this.secondText,
  });

  final TextStyle colorizeTextStyle;
  final List<MaterialColor> colorizedColour;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        isRepeatingAnimation: false,
        animatedTexts: [
          ColorizeAnimatedText(
            firstText,
            textStyle: colorizeTextStyle,
            colors: colorizedColour,
          ),
          ColorizeAnimatedText(
            secondText,
            textStyle: colorizeTextStyle,
            colors: colorizedColour,
          ),
        ]);
  }
}