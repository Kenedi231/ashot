import 'package:flutter/material.dart';

import '../../../widgets/stars_widget.dart';

class ProductRate extends StatelessWidget {

  final double _rate;
  final int _countReviews;

  const ProductRate({
    Key key,
    double rate,
    int countReviews,
  }) : _rate = rate,
       _countReviews = countReviews,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          StarsWidget(size: 24, rate: _rate,),
          Text(' ${_rate.toStringAsFixed(1)} ($_countReviews Обзоров)')
        ],
      ),
    );
  }
}