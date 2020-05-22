import 'package:ashot/domain/cart/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(item.dish.imageURL.getOrCrash()),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(item.dish.name.getOrCrash()),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {},
                          ),
                          Text('${item.count}'),
                          IconButton(
                            icon: Icon(Icons.add_circle),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('${item.dish.price.getOrCrash() * item.count} руб'),
                  IconButton(
                    icon: Icon(Icons.delete_sweep, color: Colors.red),
                    onPressed: () {}
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}