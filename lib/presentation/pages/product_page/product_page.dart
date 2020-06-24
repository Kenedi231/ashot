import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/catalog/cart/cart_bloc.dart';
import '../../../application/review_watcher/review_watcher_bloc.dart';
import '../../../domain/catalog/product.dart';
import '../../../injection.dart';
import 'widgets/product_body.dart';

class ProductPage extends StatelessWidget implements AutoRouteWrapper {
  final Product _product;

  const ProductPage({
    Key key,
    Product product,
  }) : _product = product,
       super(key: key);

  @override
  Widget get wrappedRoute => MultiBlocProvider(
    providers: [
      BlocProvider<CartBloc>(
        create: (context) => getIt<CartBloc>()
          ..add(const CartEvent.cartReceived())
      ),
    ],
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (BuildContext context, CartState state) {
        return Scaffold(
          body: ProductBody(product: _product),
          bottomNavigationBar: SafeArea(
            child: SizedBox(
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  context.bloc<CartBloc>()
                    .add(CartEvent.addToCart(_product));
                },
                color: Colors.orangeAccent,
                textColor: Colors.white,
                child: const Text('Добавить в корзину'),
              ),
            ),
          ),
        );
      }
    );
  }
}
