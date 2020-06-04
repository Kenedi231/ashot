

import 'package:ashot/application/catalog/cart/cart_bloc.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String _name, _description;
  final int _price;

  const ProductInfo({
    Key key,
    String name,
    String description,
    int price,
  }) : _name = name,
       _description = description,
       _price = price,
       super(key: key);


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          _name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      Text(
                        '$_price руб',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _description,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }
}