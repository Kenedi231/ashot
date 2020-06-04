import 'package:flutter/material.dart';

class CartWidgetHeader extends StatelessWidget {
  final Function _onClear;

  const CartWidgetHeader({
    Key key,
    @required Function onClear,
  }) : _onClear = onClear,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Ваш заказ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              _onClear();
            },
            child: Icon(Icons.delete_outline, size: 24)
          ),
        ],
      ),
    );
  }
}