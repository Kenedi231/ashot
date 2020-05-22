import '../catalog/product.dart';
import 'cart.dart';

abstract class ICartRepository {
  Cart watchAll();
  Cart clear();
  Cart add(Product item);
  Cart update(Product item);
  Cart delete(Product item);
}