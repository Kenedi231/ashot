import 'package:flutter/material.dart';

import '../../../widgets/stars_widget.dart';

class ProductRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          StarsWidget(size: 24),
          Text(' 5.0 (24 Обзоров)')
        ],
      ),
    );
  }
}