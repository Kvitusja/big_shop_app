import 'package:flutter/material.dart';

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabelText;
  const ProfileHeaderLabel({
    super.key, required this.headerLabelText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            headerLabelText,
            style: const TextStyle(color: Colors.grey, fontSize: 22),
          ),
          const SizedBox(
            height: 40,
            width: 50,
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}