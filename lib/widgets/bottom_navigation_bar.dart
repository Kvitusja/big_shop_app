import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final void Function(int) onTap;
  final int currentIndex;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final List<BottomNavigationBarItem> items;
  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.selectedItemColor,
    required this.unselectedItemColor,
    required this.items,
    required this.onTap,
  })  :
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: selectedItemColor,
      unselectedItemColor: unselectedItemColor,
      items: items,
    );
  }
}
