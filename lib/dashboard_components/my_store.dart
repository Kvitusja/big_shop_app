import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class MyStore extends StatelessWidget {
  const MyStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(text: 'My Store',
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.black,
        ),
      ),),
    );
  }
}


