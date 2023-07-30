import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Widget? leading;
  const AppBarWidget({
    super.key, required this.text, this.leading,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  //Size get preferredSize => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
      leading: leading,
    );
  }

}