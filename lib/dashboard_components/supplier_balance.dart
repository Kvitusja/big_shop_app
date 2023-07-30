import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class SupplierBalance extends StatelessWidget {
  const SupplierBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: 'Supplier balance',
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
