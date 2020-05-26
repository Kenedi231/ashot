import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final String _title, _subtitle;

  const Tile({
    Key key,
    String title,
    String subtitle,
  })  : _title = title,
        _subtitle = subtitle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _subtitle,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}
