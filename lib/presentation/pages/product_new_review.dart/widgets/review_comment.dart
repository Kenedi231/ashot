import 'package:flutter/material.dart';

class ReviewComment extends StatelessWidget {
  final Function _onChange;

  const ReviewComment({
    Key key,
    Function onChange,
  }) : _onChange = onChange,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        autocorrect: false,
        maxLines: null,
        onChanged: (value) {
          _onChange(value);
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}