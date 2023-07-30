import 'package:flutter/material.dart';

import 'dashboard_components/my_store.dart';
import 'screens/customer_home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/stores_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/supplier_home_screen.dart';
import 'screens/user_profile_screen.dart';
import 'screens/welcome_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyStore(),
        // const WelcomeScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        StoresScreen.routeName: (context) => const StoresScreen(),
        CartScreen.routeName: (context) => const CartScreen(),
        UserProfileScreen.routeName: (context) => const UserProfileScreen(),
        CustomerHomeScreen.routeName: (context) => const CustomerHomeScreen(),
        SupplierHomeScreen.routeName: (context) => const SupplierHomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
