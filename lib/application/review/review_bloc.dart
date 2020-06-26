import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/review/review.dart';

part 'review_bloc.freezed.dart';
part 'review_event.dart';
part 'review_state.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {

  ReviewBloc();

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
        // todo 
      },
    );
  }
}
