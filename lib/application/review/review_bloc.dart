import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/review/i_review_repository.dart';
import '../../domain/review/review.dart';

part 'review_bloc.freezed.dart';
part 'review_event.dart';
part 'review_state.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final IReviewRepository _reviewRepository;

  ReviewBloc(this._reviewRepository);

  @override
  ReviewState get initialState => ReviewState.initial();

  @override
  Stream<ReviewState> mapEventToState(
    ReviewEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield e.initReview.fold(
          () => state,
          (review) {
            return state.copyWith(
              review: review,
            );
          },
        );
      },
      rateChanged: (e) async* {
        yield state.copyWith(
          review: state.review.copyWith(rate: Rate(e.rate)),
        );
      },
      commentChanged: (e) async* {
        yield state.copyWith(
          review: state.review.copyWith(comment: Comment(e.comment)),
        );
      },
      saved: (e) async* {
        await _reviewRepository.addNewReview(state.review);
        yield state.copyWith(
          isSubmitting: true,
        );
      },
      update: (e) async* {
        await _reviewRepository.update(e.currentReview, state.review);
        yield state.copyWith(
          isSubmitting: true,
        );
      },
      removeReview: (e) async* {
        await _reviewRepository.removeReview(e.review);
        yield state.copyWith(
          isSubmitting: true,
        );
      },
    );
  }
}
