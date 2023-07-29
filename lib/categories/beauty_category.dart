import 'package:flutter/material.dart';

import '../helpers/categ_list.dart';
import '../screens/single_category.dart';
import '../widgets/gridview_item.dart';

class BeautyCategory extends StatelessWidget {
  const BeautyCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.78,
        child: GridView.builder(
            itemCount: beauty.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 230,
            ),
            itemBuilder: (BuildContext context, index) {
              return GridViewItem(
                image: 'assets/beauty/beauty$index.jpg',
                itemDescription: beauty[index],
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubcategoryProducts(
                            subcategoryName: beauty[index],
                            mainCategoryName: 'Beauty',
                          )));
                },
              );
            }));
  }
}


