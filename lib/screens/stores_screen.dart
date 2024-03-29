import 'package:flutter/material.dart';

class StoresScreen extends StatelessWidget {
  static const routeName = '/stores';
  const StoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(child: Text('Stores', style: TextStyle(color: Colors.black),)),
      ),
      body: Container(),
    );
  }
}
