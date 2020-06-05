import 'package:flutter/material.dart';

import 'review_comment.dart';
import 'review_rate.dart';

class ReviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReviewRate(),
          ReviewComment(),
        ],
      ),
    );
  }
}