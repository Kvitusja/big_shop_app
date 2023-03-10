import 'package:flutter/material.dart';

import '../categories/accessories_category.dart';
import '../categories/bags_category.dart';
import '../categories/beauty_category.dart';
import '../categories/electronics_category.dart';
import '../categories/home_and_garden_category.dart';
import '../categories/kids_category.dart';
import '../categories/men_category.dart';
import '../categories/shoes_screen.dart';
import '../categories/women_category.dart';
import '../widgets/custom_search_field.dart';

const List<Widget> categories = [
  Text(
    'Men',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Women',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Electronics',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Accessories',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Shoes',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Home & Garden',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Beauty',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Bags',
    style: TextStyle(fontSize: 13),
  ),
  Text(
    'Kids',
    style: TextStyle(fontSize: 13),
  ),
];

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<bool> _selections = List.generate(9, (_) => false);
  final PageController pageController = PageController();

  // @override
  // void initState() {
  //   setState(() {
  //     for (int i = 0; i < _selections.length; i++) {
  //       _selections[0] = i == 0;
  //     }
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: CustomSearchField(
          onSubmitted: (text) {},
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.79,
                width: MediaQuery.of(context).size.width * 0.21,
                color: Colors.grey.shade300,
                child: LayoutBuilder(
                  builder: (context, constraint) => ToggleButtons(
                    constraints:
                        BoxConstraints.expand(height: constraint.maxHeight / 9),
                    selectedColor: Colors.green,
                    renderBorder: false,
                    fillColor: Colors.white,
                    direction: Axis.vertical,
                    isSelected: _selections,
                    onPressed: (int index) {
                      setState(() {
                        pageController.animateToPage(index,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.easeInCirc);
                      });
                      // setState(() {
                      //   for (int i = 0; i < _selections.length; i++) {
                      //     _selections[i] = i == index;
                      //   }
                      // });
                    },
                    children: categories,
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.79,
                width: MediaQuery.of(context).size.width * 0.79,
                color: Colors.white,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (int value) {
                    setState(() {
                      for (int i = 0; i < _selections.length; i++) {
                        _selections[i] = i == value;
                      }
                    });
                  },
                  children: const [
                    Center(
                      child: MenCategory(),
                    ),
                    Center(
                      child: WomenCategory(),
                    ),
                    Center(
                      child: ElectronicsCategory(),
                    ),
                    Center(
                      child: AccessoriesCategory(),
                    ),
                    Center(
                      child: ShoesCategory(),
                    ),
                    Center(
                      child: HomeAndGardenCategory(),
                    ),
                    Center(
                      child: BeautyCategory()
                    ),
                    Center(
                      child: BagsCategory(),
                    ),
                    Center(
                      child: KidsCategory(),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
