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
    // ignore: avoid_unnecessary_containers
    return Container(
      child: TextField(
        maxLength: 400,
        autocorrect: false,
        maxLines: null,
        onChanged: (value) {
          _onChange(value);
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}