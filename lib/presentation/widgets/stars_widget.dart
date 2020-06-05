import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  final double _size;
  final double _rate;
  final Function _onTap;

  const StarsWidget({
    Key key,
    double size,
    double rate,
    Function onTap,
  }) : _size = size,
       _rate = rate,
       _onTap = onTap,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: getStar(_rate ?? 5, _size, _onTap ?? (value) {}),
    );
  }

  List<GestureDetector> getStar(double rate, double size, Function onPress) {
    final List<GestureDetector> stars = <GestureDetector>[];
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

      stars.add(
        GestureDetector(
          onTap: () {
            onPress(i + 1);
          },
          child: newIcon,
        )
      );
    }

    return stars;
  }

}