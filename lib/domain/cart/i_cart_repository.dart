import '../catalog/product.dart';
import 'cart.dart';
import 'cart_item.dart';

abstract class ICartRepository {
  Cart watchAll();
  Cart clear();
  Cart add(Product item);
  Cart update(CartItem item, int deltaCount);
  Cart delete(CartItem item);
}