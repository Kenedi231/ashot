part of 'story_of_orders_bloc.dart';

@freezed
abstract class StoryOfOrdersEvent with _$StoryOfOrdersEvent {
  const factory StoryOfOrdersEvent.watchAll() = _WatchAll;

  const factory StoryOfOrdersEvent.catalogReceived(
          Either<CartFailure, List<Cart>> failureOrProducts) =
      _CatalogReceived;
}
