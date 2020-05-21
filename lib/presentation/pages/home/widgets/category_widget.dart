import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String _title;
  final Widget _child;
  final Widget _carousel;

  const Category({
    Key key,
    @required String title,
    @required Widget child,
    Widget carousel,
  })  : _title = title,
        _child = child,
        _carousel = carousel,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _carousel ?? const SizedBox(),
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
