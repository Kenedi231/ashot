import 'package:flutter/material.dart';

import '../../../shared/common_styles.dart';

class StoryOfOrdersPrice extends StatelessWidget {
  final int _total;

  const StoryOfOrdersPrice({
    Key key,
    int total,
  }) : _total = total,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Цена:',
          style: CommonStyles.totalPriceStyle,
        ),
        Text(
          '$_total руб',
          style: CommonStyles.totalPriceStyle,
        ),
      ],
    );
  }
}