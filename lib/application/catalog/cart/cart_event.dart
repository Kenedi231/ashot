part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.cartReceived() = _CartReceived;
  const factory CartEvent.addToCart(Product addProduct) = _AddToCart;
  const factory CartEvent.updateCart(CartItem item, int deltaCount) = _UpdateCart;
  const factory CartEvent.deleteFromCart(CartItem deletedProduct) = _DeleteFromCart;
  const factory CartEvent.clearCart() = _ClearCart;
}