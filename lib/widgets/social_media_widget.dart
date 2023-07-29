import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  final String text;
  final String assetName;
  const SocialMediaWidget({
    super.key, required this.text, required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: Image(
            image: AssetImage(assetName),
          ),
        ),
        Text(text, style: const TextStyle(color: Colors.white),),
      ],
    );
  }
}