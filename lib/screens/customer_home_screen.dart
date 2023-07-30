import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';
import 'cart_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';
import 'stores_screen.dart';
import 'user_profile_screen.dart';

class CustomerHomeScreen extends StatefulWidget {
  static const routeName = '/customer_home_screen';
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  final List<Widget> tabs = [
    const HomeScreen(),
    const SearchScreen(),
    const StoresScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Category',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.storefront),
      label: 'Stores',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: items,
        onTap: _onItemTapped,
      ),
      body: tabs[currentIndex],
    );
  }
}
