import 'package:flutter/material.dart';

import '../helpers/categ_list.dart';
import '../screens/single_category.dart';
import '../widgets/gridview_item.dart';

class BagsCategory extends StatelessWidget {
  const BagsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.78,
        child: GridView.builder(
            itemCount: bags.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 230,
            ),
            itemBuilder: (BuildContext context, index) {
              return GridViewItem(
                image: 'assets/bags/bags$index.jpg',
                itemDescription: homeandgarden[index],
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubcategoryProducts(
                            subcategoryName: bags[index],
                            mainCategoryName: 'Bags',
                          )));
                },
              );
            }));
  }
}


