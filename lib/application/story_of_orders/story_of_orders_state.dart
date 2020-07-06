part of 'story_of_orders_bloc.dart';

@freezed
abstract class StoryOfOrdersState with _$StoryOfOrdersState {
  const factory StoryOfOrdersState.initial() = Initial;
  const factory StoryOfOrdersState.loadInProgress() = DataTransferInProgress;
  const factory StoryOfOrdersState.loadSuccess(List<Cart> orders) =
      LoadSuccess;
  const factory StoryOfOrdersState.loadFailure(CartFailure cartFailure) =
      LoadFailure;
}