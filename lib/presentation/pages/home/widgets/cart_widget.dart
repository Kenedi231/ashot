import 'package:flutter/material.dart';

import '../../../shared/common_styles.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: CommonStyles.slidePanelRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              height: 10,
              width: 100,
              margin: const EdgeInsets.only(top: 10),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
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
                  onTap: null,
                  child: Icon(Icons.delete, size: 24)
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(child: Text('Items')), // add item to cart
          ),
          Center(
            child: RaisedButton(
              onPressed: null,
              child: Text('Оплатить'),
            ),
          ),
        ],
      ),
    );
  }
}