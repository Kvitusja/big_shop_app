import 'package:flutter/material.dart';

import '../widgets/appbar_widget.dart';

class SupplierStatistics extends StatelessWidget {
  const SupplierStatistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: 'Supplier statistics',
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
