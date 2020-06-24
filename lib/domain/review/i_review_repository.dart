import 'package:ashot/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

import 'review.dart';
import 'review_failure.dart';

abstract class IReviewRepository {
  Stream<Either<ReviewFailure, List<Review>>> watchAll();
  Future<Either<ReviewFailure, Unit>> update(Review updatedReview);
}
