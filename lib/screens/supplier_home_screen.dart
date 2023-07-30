import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';
import 'dashboard_screen.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'stores_screen.dart';

class SupplierHomeScreen extends StatefulWidget {
  static const routeName = '/supplier_home_screen';
  const SupplierHomeScreen({Key? key}) : super(key: key);

  @override
  State<SupplierHomeScreen> createState() => _SupplierHomeScreenState();
}

class _SupplierHomeScreenState extends State<SupplierHomeScreen> {
  final List<Widget> tabs = [
    const HomeScreen(),
    const SearchScreen(),
    const StoresScreen(),
    const DashboardScreen(),
    const Center(child: Text('Upload'),),
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
      icon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.upload),
      label: 'Upload',
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