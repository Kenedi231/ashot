import 'package:flutter/material.dart';

import '../../../shared/common_styles.dart';
import 'cart_item_widget.dart';

final List<String> fakeDishes = [
  'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1588005923326-1fbd0adbcc10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1589354774422-2a9d9c0cb143?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
];

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
          const SizedBox(height: 40),
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
                  onTap: () {},
                  child: Icon(Icons.delete_outline, size: 24)
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: fakeDishes.length,
              itemBuilder: (BuildContext context, int index) {
                return CartItemWidget(item: fakeDishes[index]);
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(height: 1, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Всего:',
                      style: CommonStyles.totalPriceStyle,
                    ),
                    Text(
                      '1422.75 руб',
                      style: CommonStyles.totalPriceStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: RaisedButton(
                onPressed: () {},
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.yellow)
                ),
                color: Colors.orangeAccent,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child:
                    const Text(
                      'Оплатить',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}