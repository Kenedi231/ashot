import 'package:flutter/material.dart';

import '../../../../../domain/cart/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem _item;
  final Function _delete;
  final Function _update;

  const CartItemWidget({
    Key key,
    CartItem item,
    Function delete,
    Function update,
  }) : _item = item,
       _delete = delete,
       _update = update,
       super(key: key);

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
                  backgroundImage: NetworkImage(_item.dish.imageURL.getOrCrash()),
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
                      Text(_item.dish.name.getOrCrash()),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {
                              _update(-1);
                            },
                          ),
                          Text('${_item.count.getOrElse(1)}'),
                          IconButton(
                            icon: Icon(Icons.add_circle),
                            onPressed: () {
                              _update(1);
                            },
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
                  Text('${_item.dish.price.getOrCrash() * _item.count.getOrElse(1)} руб'),
                  IconButton(
                    icon: Icon(Icons.delete_sweep, color: Colors.red),
                    onPressed: () {
                      _delete();
                    },
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