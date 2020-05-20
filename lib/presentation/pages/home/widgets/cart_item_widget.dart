import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final String item;

  const CartItemWidget({this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(item),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Dishes Dishes Dishes Dishes Dishes'),
                      SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {},
                          ),
                          Text('1'),
                          IconButton(
                            icon: Icon(Icons.add_circle),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('455 руб'),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {}
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}