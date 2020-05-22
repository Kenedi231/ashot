import 'package:ashot/domain/cart/i_cart_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/cart/cart.dart';
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
    yield* event.map(
      cartReceived: (e) async* {
        final cart = cartRepository.watchAll();
        yield CartState.received(cart);
      },
      addToCart: (e) async* {
        final cart = cartRepository.add(e.addProduct);
        yield CartState.received(cart);
      },
      clearCart: (e) async* {
        final cart = cartRepository.clear();
        yield CartState.received(cart);
      },
      deleteFromCart: (e) async* {
        
      },
      updateCart: (e) async* {

      },
      
    );
  }

}