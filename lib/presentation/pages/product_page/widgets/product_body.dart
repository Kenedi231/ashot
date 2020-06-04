import 'package:flutter/material.dart';

import '../../../../domain/catalog/product.dart';
import 'product_image.dart';
import 'product_info.dart';

class ProductBody extends StatelessWidget {
  final Product _product;

  const ProductBody({
    Key key,
    Product product,
  }) : _product = product,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        ProductImage(imageURL: _product.imageURL.getOrElse('')),
        ProductInfo(
          name: _product.name.getOrElse(''),
          price: _product.price.getOrElse(0),
          description: _product.description.getOrElse(''),
        ),
      ],
    );
  }
}