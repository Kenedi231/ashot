import 'package:flutter/material.dart';

class ReviewComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autocorrect: false,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}