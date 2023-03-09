import 'package:flutter/material.dart';

import '../categ_list.dart';
import '../widgets/gridview_item.dart';

class WomenCategory extends StatelessWidget {
  const WomenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.78,
        child: GridView.builder(
            itemCount: women.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 230,
            ),
            itemBuilder: (BuildContext context, index) {
              return GridViewItem(
                image: 'assets/women/women$index.PNG',
                itemDescription: women[index],
                onTap: (){},
                onPressed: (){},
              );
            }));
  }
}


