import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String _imageURL;

  const ProductImage({
    Key key,
    String imageURL,
  }) : _imageURL = imageURL,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: _imageURL,
          child: Image.network(
            _imageURL,
            fit: BoxFit.cover,
          )
        ),
        collapseMode: CollapseMode.parallax,
      ),
      expandedHeight: 300,
    );
  }
}