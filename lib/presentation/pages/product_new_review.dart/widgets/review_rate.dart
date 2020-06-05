import 'package:ashot/presentation/widgets/stars_widget.dart';
import 'package:flutter/material.dart';

class ReviewRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Оцените блюдо',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        StarsWidget(
          size: 60,
          onTap: (value) {
            print(value); // changed star rate
          },
          rate: 3.0, // rate
        ),
      ],
    );
  }
}