import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String _title;
  final Widget _child;
  const Category({
    Key key,
    @required String title,
    @required Widget child,
  })  : _title = title,
        _child = child,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                _title,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        _child
      ],
    );
  }
}
