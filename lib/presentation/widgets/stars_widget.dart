import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final double _size;
  final double _rate;

  const StarsWidget({
    Key key,
    double size,
    double rate,
  }) : _size = size,
       _rate = rate,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getStar(_rate ?? 5, _size),
    );
  }

  List<Icon> getStar(double rate, double size) {
    final List<Icon> stars = <Icon>[];
    for (int i = 0; i < 5; i++) {
      final double oneStar = rate - i;
      Icon newIcon;
      if (oneStar < 0.5) {
        newIcon = Icon(Icons.star_border, size: size ?? 24, color: Colors.orangeAccent);
      } else if (oneStar < 1) {
        newIcon = Icon(Icons.star_half, size: size ?? 24, color: Colors.orangeAccent);
      } else {
        newIcon = Icon(Icons.star, size: size ?? 24, color: Colors.orangeAccent);
      }
      stars.add(newIcon);
    }

    return stars;
  }

}