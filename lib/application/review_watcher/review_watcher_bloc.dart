import 'dart:async';

import 'package:ashot/domain/review/i_review_repository.dart';
import 'package:ashot/domain/review/review.dart';
import 'package:ashot/domain/review/review_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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

  @override
  ReviewWatcherState get initialState => const ReviewWatcherState.initial();

  @override
  Stream<ReviewWatcherState> mapEventToState(
    ReviewWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        print(1);
        await _reviewStreamSubscription?.cancel();
        _reviewRepository.watchAll().listen(
            (reviews) => add(ReviewWatcherEvent.reviewReceived(reviews)));
      },
      reviewReceived: (e) async* {
        yield e.failureOrReviews.fold(
          (f) => ReviewWatcherState.loadFailure(f),
          (reviews) => ReviewWatcherState.loadSuccess(reviews),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _reviewStreamSubscription.cancel();
    return super.close();
  }
}
