import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/cart/cart.dart';
import '../../domain/cart/cart_item.dart';
import '../../domain/cart/i_cart_repository.dart';
import '../../domain/catalog/product.dart';
import '../../domain/core/value_objects.dart';

@prod
@lazySingleton
@RegisterAs(ICartRepository)
class CartRepository implements ICartRepository {
  Cart cart = Cart(
    items: KtList.empty(),
    total: Price(0),
  );
  
  @override
  Cart add(Product item) => cart = Cart(
    items: cart.items.plusElement(CartItem(
      dish: item,
      count: 1,
    )),
    total: Price(cart.total.getOrCrash() + item.price.getOrCrash()),
  );
  
  @override
  Cart clear() => cart = Cart(
    items: KtList.empty(),
    total: Price(0),
  );

  @override
  Cart delete(Product item) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Cart update(Product item) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Cart watchAll() => cart;
}
