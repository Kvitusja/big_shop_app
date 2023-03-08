import 'package:flutter/material.dart';

import 'screens/customer_home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/stores_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/user_profile_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const CustomerHomeScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        StoresScreen.routeName: (context) => const StoresScreen(),
        CartScreen.routeName: (context) => const CartScreen(),
        UserProfileScreen.routeName: (context) => const UserProfileScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
