import 'package:flutter/material.dart';

import '../helpers/screens_list.dart';
import '../widgets/custom_search_field.dart';



class SearchScreen extends StatefulWidget {
  static const routeName = '/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<bool> _selections = List.generate(9, (_) => false);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
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
                  children: categoryScreens,
                ),
              )),
        ],
      ),
    );
  }
}
