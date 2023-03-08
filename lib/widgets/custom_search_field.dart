import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final void Function(String)? onSubmitted;
  const CustomSearchField({
    Key? key, this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onSubmitted: onSubmitted,
      placeholder: 'What are you looking for?',
      placeholderStyle: const TextStyle(fontSize: 15, color: Colors.grey),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(18)),
      suffixIcon: const Icon(CupertinoIcons.clear_circled),
      suffixMode: OverlayVisibilityMode.always,
    );
  }
}