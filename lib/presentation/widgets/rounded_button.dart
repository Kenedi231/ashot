

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function _onPressed;
  final String _text;

  const RoundedButton({
    Key key,
    @required Function onPressed,
    @required String text,
  }) : _text = text,
       _onPressed = onPressed,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Center(
        child: RaisedButton(
          onPressed: () {
            _onPressed();
          },
          splashColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.yellow)
          ),
          color: Colors.orangeAccent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child:
              Text(
                _text,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
          ),
        ),
      ),
    );
  }
}