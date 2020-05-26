import 'package:flutter/material.dart';

import '../../../../shared/common_styles.dart';

class CartTotalWidget extends StatelessWidget {
  final int _total;

  const CartTotalWidget({
    Key key,
    @required int total,
  }) : _total = total,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(height: 1, color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Всего:',
                style: CommonStyles.totalPriceStyle,
              ),
              Text(
                '$_total руб',
                style: CommonStyles.totalPriceStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}