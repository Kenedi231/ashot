part of 'review_bloc.dart';

@freezed
abstract class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.initial(Option<Review> initReview) = Initial;

  const factory ReviewEvent.rateChanged(double rate) = RateChanged;
  const factory ReviewEvent.commentChanged(String comment) = CommentChanged;

  const factory ReviewEvent.saved() = Saved;
  const factory ReviewEvent.removeReview(Review review) = RemoveReview;
}
