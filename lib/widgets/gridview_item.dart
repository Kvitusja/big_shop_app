import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final String image;
  final String itemDescription;
  final void Function()? onTap;
  final void Function()? onPressed;
  const GridViewItem({
    Key? key,
    required this.image,
    required this.itemDescription,
    this.onTap, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            children: [
          Flexible(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              child: InkWell(
                onTap: onTap,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                  height: 170,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(itemDescription, style: const TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
