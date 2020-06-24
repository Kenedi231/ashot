import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_failure.freezed.dart';

@freezed
abstract class ReviewFailure with _$ReviewFailure {
  const factory ReviewFailure.emptyReview() = EmptyReview;
  const factory ReviewFailure.unexpected() = Unexpected;
  const factory ReviewFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory ReviewFailure.unableToUpdate() = UnableToUpdate;
}
