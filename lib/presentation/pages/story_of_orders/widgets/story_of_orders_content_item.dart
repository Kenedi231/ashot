import 'package:flutter/material.dart';

import '../../../../domain/cart/cart_item.dart';
import '../../../shared/common_styles.dart';

class StoryOfOrdersContentItem extends StatelessWidget {
  final CartItem _item;

  const StoryOfOrdersContentItem({
    Key key,
    CartItem item,
  }) : _item = item,
       super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Text(
              '${_item.count.getOrElse(0)} x ${_item.dish.name.getOrCrash()}',
              style: CommonStyles.nameItemStyle,
            ),
          ),
          Text(
            '${_item.count.getOrElse(0) * _item.dish.price.getOrElse(0)}',
            style: CommonStyles.nameItemStyle,
          ),
        ]
      ),
    );
  }
}