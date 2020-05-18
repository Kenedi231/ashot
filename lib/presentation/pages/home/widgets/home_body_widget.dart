import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import 'category_widget.dart';

final List<String> fakeDishes = [
  'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1588005923326-1fbd0adbcc10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1589354774422-2a9d9c0cb143?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
];

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Category(
          title: 'Блюда',
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enableInfiniteScroll: false,
              reverse: false,
            ),
            items: fakeDishes.map<Widget>((image) {
              return Container(
                padding: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
