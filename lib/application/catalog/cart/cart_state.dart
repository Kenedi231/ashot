part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = Initial;
  const factory CartState.received(Cart cart) =
      Received;
}