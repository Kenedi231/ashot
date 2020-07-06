import 'package:ashot/presentation/routes/router.gr.dart';
import 'package:ashot/presentation/widgets/hero_text.dart';
import 'package:flutter/material.dart';

class ProfileOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Router.navigator.pushNamed(Router.storyOfOrdersPage);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            HeroText(
              heroTag: 'story-of-orders',
              widget: Text(
                'История заказов',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Icon(Icons.chevron_right, size: 28),
          ],
        ),
      ),
    );
  }
}