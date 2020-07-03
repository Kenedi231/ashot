import 'package:flutter/material.dart';

import '../../../shared/update_text.dart';

class ReviewComment extends StatelessWidget {
  final String _comment;
  final Function _onChange;

  const ReviewComment({
    Key key,
    Function onChange,
    String comment,
  }) : _onChange = onChange,
       _comment = comment,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController(text: _comment);
    updateText(_controller, _comment);

    return TextField(
      maxLength: 400,
      autocorrect: false,
      maxLines: null,
      controller: _controller,
      onChanged: (value) {
        _onChange(value);
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}