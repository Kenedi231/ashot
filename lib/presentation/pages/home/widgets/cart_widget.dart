import 'package:ashot/application/catalog/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/common_styles.dart';
import 'cart_item_widget.dart';

class CartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (BuildContext context, CartState state) {
        return state.map(
          initial: (_) => Container(),
          received: (state) {
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
                          onTap: () {
                            context
                              .bloc<CartBloc>()
                              .add(const CartEvent.clearCart());
                          },
                          child: Icon(Icons.delete_outline, size: 24)
                        ),
                      ],
                    ),
                  ),
                  if (state.cart.items.size != 0) Expanded(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.cart.items.size,
                            itemBuilder: (BuildContext context, int index) {
                              return CartItemWidget(
                                item: state.cart.items[index],
                                delete: () {
                                  context
                                    .bloc<CartBloc>()
                                    .add(CartEvent.deleteFromCart(state.cart.items[index]));
                                },
                                update: (int delta) {
                                  context
                                    .bloc<CartBloc>()
                                    .add(CartEvent.updateCart(state.cart.items[index], delta));
                                }
                              );
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
                                    '${state.cart.total.getOrCrash()} руб',
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
                  ) else const Expanded(
                    child: Center(
                      child: Text('Корзина пуста')
                    ),
                  ),
                ],
              ),
            );
          }
        );
      },
    );
  }
}