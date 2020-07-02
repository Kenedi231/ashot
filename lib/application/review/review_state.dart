part of 'review_bloc.dart';

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState({
    @required Review review,
    @required bool showErrorMessages,
    @required bool isSubmitting,
  }) = _ReviewState;

  factory ReviewState.initial() => ReviewState(
    review: Review.empty(),
    showErrorMessages: false,
    isSubmitting: false,
  );
}
