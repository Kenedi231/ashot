part of 'review_watcher_bloc.dart';

@freezed
abstract class ReviewWatcherState with _$ReviewWatcherState {
  const factory ReviewWatcherState.initial() = Initial;
  const factory ReviewWatcherState.loadInProgress() = DataTransferInProgress;
  const factory ReviewWatcherState.loadSuccess(List<Review> reviews, @nullable Review userReview) =
      LoadSuccess;
  const factory ReviewWatcherState.loadFailure(ReviewFailure reviewFailure) =
      LoadFailure;
}
