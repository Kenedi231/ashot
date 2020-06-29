part of 'review_watcher_bloc.dart';

@freezed
abstract class ReviewWatcherEvent with _$ReviewWatcherEvent {
  const factory ReviewWatcherEvent.watchAll(Product product) = _WatchAll;
  const factory ReviewWatcherEvent.reviewReceived(
          Either<ReviewFailure, List<Review>> failureOrReviews) =
      _ReviewReceived;
}
