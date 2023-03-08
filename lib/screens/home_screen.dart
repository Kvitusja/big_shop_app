import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_search_field.dart';
import '../widgets/custom_tab.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: CustomSearchField(
            onSubmitted: (text) {
              Navigator.of(context).pushNamed(SearchScreen.routeName);
            },
          ),
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.symmetric(horizontal: 12),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorWeight: 3,
              indicatorColor: Colors.green,
              tabs: [
                CustomTab(text: 'Men'),
                CustomTab(text: 'Women'),
                CustomTab(text: 'Shoes'),
                CustomTab(text: 'Bags'),
                CustomTab(text: 'Electronics'),
                CustomTab(text: 'Accessories'),
                CustomTab(text: 'Home & Garden'),
                CustomTab(text: 'Kids'),
                CustomTab(text: 'Beauty'),
              ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Men'),
            ),
            Center(
              child: Text('Women'),
            ),
            Center(
              child: Text('Shoes'),
            ),
            Center(
              child: Text('Bags'),
            ),
            Center(
              child: Text('Electronics'),
            ),
            Center(
              child: Text('Accessories'),
            ),
            Center(
              child: Text('Home & Garden'),
            ),
            Center(
              child: Text('Kids'),
            ),
            Center(
              child: Text('Beauty'),
            ),
          ],
        ),
      ),
    );
  }
}

// CupertinoSearchTextField(
// onSubmitted: (text) {
// Navigator.of(context).pushNamed(SearchScreen.routeName);
// },
// placeholder: 'What are you looking for?',
// placeholderStyle: const TextStyle(fontSize: 15, color: Colors.grey),
// decoration: BoxDecoration(
// border: Border.all(
// color: Colors.green,
// width: 2,
// ),
// borderRadius: BorderRadius.circular(18)),
// suffixIcon: const Icon(CupertinoIcons.clear_circled),
// suffixMode: OverlayVisibilityMode.always,
// ),
