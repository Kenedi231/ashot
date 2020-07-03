import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/catalog/product.dart';
import '../../domain/review/i_review_repository.dart';
import '../../domain/review/review.dart';
import '../../domain/review/review_failure.dart';

part 'review_watcher_bloc.freezed.dart';
part 'review_watcher_event.dart';
part 'review_watcher_state.dart';

@injectable
class ReviewWatcherBloc
    extends Bloc<ReviewWatcherEvent, ReviewWatcherState> {
  final IReviewRepository _reviewRepository;

  ReviewWatcherBloc(this._reviewRepository);

  StreamSubscription<Either<ReviewFailure, List<Review>>>
      _reviewStreamSubscription;

  Review _checkExistComment(List<Review> reviews, String userId) {
    return reviews.firstWhere((element) => element.user.id.getOrCrash() == userId, orElse: () => null);
  }

  @override
  ReviewWatcherState get initialState => const ReviewWatcherState.initial();

  @override
  Stream<ReviewWatcherState> mapEventToState(
    ReviewWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const ReviewWatcherState.loadInProgress();
        await _reviewStreamSubscription?.cancel();
        _reviewRepository.watchAll(e.product).listen(
            (reviews) => add(ReviewWatcherEvent.reviewReceived(reviews)));
      },
      getCurrentReviews: (e) async* {
        add(ReviewWatcherEvent.reviewReceived(_reviewRepository.getCurrentReviews()));
      },
      reviewReceived: (e) async* {
        final User user = await _reviewRepository.getUser();
        yield e.failureOrReviews.fold(
          (f) => ReviewWatcherState.loadFailure(f),
          (reviews) => ReviewWatcherState.loadSuccess(reviews, _checkExistComment(reviews, user.id.getOrCrash())),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _reviewStreamSubscription?.cancel();
    return super.close();
  }
}
