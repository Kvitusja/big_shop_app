import 'package:flutter/material.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.67,
        child: GridView.builder(
            itemCount: 40,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
            ),
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  color: Colors.green,
                ),
              );
            }));
  }
}
