import 'package:flutter/material.dart';

class WelcomeScreenButton extends StatelessWidget {
  final String text;
  final Function()? function;
  const WelcomeScreenButton({
    super.key, required this.text, this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellowAccent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 14.5),
        ),
      ),
    );
  }
}