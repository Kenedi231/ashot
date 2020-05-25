

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../widgets/stars_widget.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> _dishes;

  const CarouselWidget({
    Key key,
    List<String> dishes,
  }) : _dishes = dishes,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        height: 300,
        reverse: false,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: _dishes.map<Widget>((image) {
        return Wrap(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dish',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      StarsWidget(size: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('5.0 (16 Обзоров)'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}