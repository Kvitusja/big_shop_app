import 'package:flutter/material.dart';

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Icon icon;
  final Function()? onTap;
  const RepeatedListTile({
    super.key, required this.title, required this.icon, required this.onTap, required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        leading: icon),
      );
  }
}