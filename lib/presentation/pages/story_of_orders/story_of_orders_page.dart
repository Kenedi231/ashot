import 'package:flutter/material.dart';

import '../../widgets/hero_text.dart';
import 'widgets/story_of_orders_body.dart';

class StoryOfOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const HeroText(
          heroTag: 'story-of-orders',
          widget: Text(
            'История заказов',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: StoryOfOrdersBody(),
    );
  }
}