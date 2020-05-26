import 'package:flutter/material.dart';

class CartLineWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        height: 10,
        width: 100,
        margin: const EdgeInsets.only(top: 10),
      ),
    );
  }
}