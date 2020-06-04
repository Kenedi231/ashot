import 'package:flutter/material.dart';

import '../../../domain/catalog/product.dart';
import 'widgets/product_body.dart';

class ProductPage extends StatelessWidget {
  final Product _product;

  const ProductPage({
    Key key,
    Product product,
  }) : _product = product,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductBody(product: _product),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0.0),
          child: SizedBox(
            height: 45,
            child: RaisedButton(
              onPressed: () {}, // TODO: add to cart
              color: Colors.orangeAccent,
              textColor: Colors.white,
              child: const Text('Добавить в корзину'),
            ),
          ),
        ),
      ),
    );
  }
}
