import 'package:ashot/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

import 'comment_block.dart';

class ProductReviewers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Обзоры',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  Router.navigator.pushNamed(Router.productNewReview);
                },
                child: Text('Написать отзыв'),
              )
            ],
          ),
          CommentBlock(
            imageURL: 'https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            name: 'Diana Line',
            comment: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum',
            date: ' 18 февраля 1999',
          ),
          CommentBlock(
            imageURL: 'https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            name: 'Merlin Mono',
            comment: 'Very cool',
            date: ' 18 июль 2911',
          ),
          CommentBlock(
            imageURL: 'https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            name: 'Narl Jon',
            comment: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem not bad',
            date: ' 18 апрель 2000',
          ),
        ],
      ),
    );
  }
}