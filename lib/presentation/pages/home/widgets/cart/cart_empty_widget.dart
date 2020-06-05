import 'package:flutter/material.dart';

class CartEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text('Корзина пуста')
      ),
    );
  }
}