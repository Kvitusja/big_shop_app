import 'package:flutter/material.dart';

class SubcategoryProducts extends StatelessWidget {
  final String subcategoryName;
  final String mainCategoryName;
  const SubcategoryProducts(
      {Key? key, required this.subcategoryName, required this.mainCategoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(subcategoryName, style: const TextStyle(color: Colors.black, fontFamily: 'Lora',fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Text(mainCategoryName, style: TextStyle(fontFamily: 'Lora', fontSize: 18),),
      ),
    );
  }
}
