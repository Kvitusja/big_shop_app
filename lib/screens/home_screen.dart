
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/customTab_list.dart';
import '../helpers/tapbarview_list.dart';
import '../widgets/custom_search_field.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: null,
          title: CustomSearchField(
            onSubmitted: (text) {
              Navigator.of(context).pushNamed(SearchScreen.routeName);
            },
          ),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: const EdgeInsets.symmetric(horizontal: 12),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorWeight: 3,
            indicatorColor: Colors.green,
            tabs: customTabList,
          ),
        ),
        body: TabBarView(
          children: tapBarViewList,
        ),
      ),
    );
  }
}

