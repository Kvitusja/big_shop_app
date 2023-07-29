import 'package:flutter/material.dart';

import '../helpers/categ_list.dart';
import '../screens/single_category.dart';
import '../widgets/gridview_item.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.78,
        child: GridView.builder(
            itemCount: men.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 230,
            ),
            itemBuilder: (BuildContext context, index) {
              return GridViewItem(
                image: 'assets/men/man$index.PNG',
                itemDescription: men[index],
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubcategoryProducts(
                            subcategoryName: men[index],
                            mainCategoryName: 'Men',
                          )));
                },
              );
            }));
  }
}


