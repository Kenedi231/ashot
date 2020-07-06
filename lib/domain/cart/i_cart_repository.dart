import 'package:dartz/dartz.dart';

import '../catalog/product.dart';
import 'cart.dart';
import 'cart_failure.dart';
import 'cart_item.dart';

abstract class ICartRepository {
  Cart watchAll();
  Cart clear();
  Cart add(Product item);
  Cart update(CartItem item, int deltaCount);
  Cart delete(CartItem item);
  Future<Either<CartFailure, Unit>> toPay();
  Stream<Either<CartFailure, List<Cart>>> getStoryOfOrders();
}