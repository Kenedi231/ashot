import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
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

  bool _checkPossibleComment(List<Review> reviews, String userId) {
    for (final review in reviews) {
      if (review.user.id.getOrCrash() == userId) return false;
    }
    return true;
  }

  @override
  ReviewWatcherState get initialState => const ReviewWatcherState.initial();

  @override
  Stream<ReviewWatcherState> mapEventToState(
    ReviewWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        await _reviewStreamSubscription?.cancel();
        _reviewRepository.watchAll(e.id).listen(
            (reviews) => add(ReviewWatcherEvent.reviewReceived(reviews)));
      },
      reviewReceived: (e) async* {
        final User user = await _reviewRepository.getUser();
        yield e.failureOrReviews.fold(
          (f) => ReviewWatcherState.loadFailure(f),
          (reviews) => ReviewWatcherState.loadSuccess(reviews, _checkPossibleComment(reviews, user.id.getOrCrash())),
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
