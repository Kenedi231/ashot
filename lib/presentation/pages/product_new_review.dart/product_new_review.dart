import 'package:flutter/material.dart';

import 'widgets/review_body.dart';

class ProductNewReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ReviewBody(),
    );
  }
}