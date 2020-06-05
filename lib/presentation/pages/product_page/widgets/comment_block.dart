import 'package:flutter/material.dart';

import '../../../widgets/stars_widget.dart';


class CommentBlock extends StatelessWidget {
  final String _imageURL, _name, _comment, _date;

  const CommentBlock({
    Key key,
    String imageURL,
    String name,
    String comment,
    String date,
  }) : _imageURL = imageURL,
       _name = name,
       _comment = comment,
       _date = date,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(_imageURL),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    _name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const StarsWidget(size: 18),
                    Text(_date)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
                  child: Text(_comment),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}