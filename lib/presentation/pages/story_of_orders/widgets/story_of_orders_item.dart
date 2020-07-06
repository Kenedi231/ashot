import 'package:flutter/material.dart';

import '../../../../domain/cart/cart.dart';
import 'story_of_orders_content.dart';
import 'story_of_orders_price.dart';

class StoryOfOrdersItem extends StatelessWidget {
  final Cart _order;

  const StoryOfOrdersItem({
    Key key,
    Cart order,
  }) : _order = order,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: Colors.amber[200],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Номер заказа ${_order.id.getOrCrash()}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                StoryOfOrdersContent(items: _order.items),
                const SizedBox(height: 10),
                StoryOfOrdersPrice(total: _order.total.getOrElse(0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}