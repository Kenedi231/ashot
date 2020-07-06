import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/cart/cart_item.dart';
import 'story_of_orders_content_item.dart';

class StoryOfOrdersContent extends StatelessWidget {
  final List<CartItem> _items;

  StoryOfOrdersContent({
    Key key,
    KtList<CartItem> items,
  }) : _items = items.dart,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _items.map(
        (CartItem item) => StoryOfOrdersContentItem(item: item),
      ).toList(),
    );
  }
}