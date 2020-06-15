import 'package:ashot/presentation/widgets/stars_widget.dart';
import 'package:flutter/material.dart';

class ReviewRate extends StatelessWidget {
  final double _rate;
  final Function _onTap;

  const ReviewRate({
    Key key,
    double rate,
    Function onTap,
  }) : _rate = rate,
       _onTap = onTap,
       super(key: key);

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
            _onTap(value);// changed star rate
          },
          rate: _rate, // rate
        ),
      ],
    );
  }
}