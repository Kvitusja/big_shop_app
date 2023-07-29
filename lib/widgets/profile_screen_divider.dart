import 'package:flutter/material.dart';

class ProfileScreenDivider extends StatelessWidget {
  const ProfileScreenDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.yellow,
      thickness: 1,
      indent: 50,
      endIndent: 50,
    );
  }
}