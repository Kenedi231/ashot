import 'package:flutter/material.dart';

class HeroText extends StatelessWidget {
  final String _heroTag;
  final Widget _widget;

  const HeroText({
    Key key,
    @required String heroTag,
    @required Widget widget,
  }) : _heroTag = heroTag,
       _widget = widget,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: _heroTag,
      child: Material(
        color: Colors.transparent,
        child: _widget,
      ),
    );
  }
}