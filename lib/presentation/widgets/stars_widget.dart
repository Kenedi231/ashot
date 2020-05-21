import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final double _size;

  const StarsWidget({
    Key key,
    double size,
  }) : _size = size,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        for (int i = 0; i < 5; i++) Icon(Icons.star, size: _size ?? 24, color: Colors.yellow),
      ],
    );
  }
}