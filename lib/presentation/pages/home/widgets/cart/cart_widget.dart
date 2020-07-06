import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/catalog/cart/cart_bloc.dart';
import '../../../../shared/common_styles.dart';
import '../../../../widgets/rounded_button.dart';
import 'cart_empty_widget.dart';
import 'cart_item_widget.dart';
import 'cart_line_widget.dart';
import 'cart_total_widget.dart';
import 'cart_widget_header.dart';

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
                  CartLineWidget(),
                  const SizedBox(height: 40),
                  CartWidgetHeader(
                    onClear: () {
                      context
                        .bloc<CartBloc>()
                        .add(const CartEvent.clearCart());
                    }
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
                        CartTotalWidget(total: state.cart.total.getOrCrash()),
                        RoundedButton(
                          onPressed: () {
                            context.bloc<CartBloc>()
                            .add(const CartEvent.toPay());
                          },
                          text: 'Оплатить',
                        ),
                      ],
                    ),
                  ) else CartEmptyWidget(),
                ],
              ),
            );
          }
        );
      },
    );
  }
}