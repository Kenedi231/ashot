import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/cart/cart.dart';
import '../../../domain/cart/cart_item.dart';
import '../../../domain/cart/i_cart_repository.dart';
import '../../../domain/catalog/product.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartRepository cartRepository;

  CartBloc({@required this.cartRepository});

  @override
  CartState get initialState => const CartState.initial();

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    Cart cart = Cart.empty();
    yield* event.map(
      cartReceived: (e) async* {
        cart = cartRepository.watchAll();
      },
      addToCart: (e) async* {
        cart = cartRepository.add(e.addProduct);
      },
      clearCart: (e) async* {
        cart = cartRepository.clear();
      },
      deleteFromCart: (e) async* {
        cart = cartRepository.delete(e.deletedProduct);
      },
      updateCart: (e) async* {
        cart = cartRepository.update(e.item, e.deltaCount);
      },
      toPay: (e) async* {
        await cartRepository.toPay();
        add(const CartEvent.clearCart());
      },
    );
    yield CartState.received(cart);
  }

}