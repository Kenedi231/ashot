import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/cart/cart.dart';
import '../../domain/cart/cart_failure.dart';
import '../../domain/cart/i_cart_repository.dart';

part 'story_of_orders_bloc.freezed.dart';
part 'story_of_orders_event.dart';
part 'story_of_orders_state.dart';

@injectable
class StoryOfOrdersBloc
    extends Bloc<StoryOfOrdersEvent, StoryOfOrdersState> {
  final ICartRepository _cartRepository;

  StoryOfOrdersBloc(this._cartRepository);

  StreamSubscription<Either<CartFailure, List<Cart>>>
      _ordersStreamSubscription;

  @override
  StoryOfOrdersState get initialState => const StoryOfOrdersState.initial();

  @override
  Stream<StoryOfOrdersState> mapEventToState(
    StoryOfOrdersEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const StoryOfOrdersState.loadInProgress();
        await _ordersStreamSubscription?.cancel();
        _cartRepository.getStoryOfOrders().listen(
            (orders) => add(StoryOfOrdersEvent.ordersReceived(orders)));
      },
      ordersReceived: (e) async* {
        yield e.failureOrOrders.fold(
          (f) => StoryOfOrdersState.loadFailure(f),
          (orders) => StoryOfOrdersState.loadSuccess(orders),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _ordersStreamSubscription?.cancel();
    return super.close();
  }
}