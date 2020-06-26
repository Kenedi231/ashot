import 'package:dartz/dartz.dart';

import '../auth/user.dart';
import 'review.dart';
import 'review_failure.dart';

abstract class IReviewRepository {
  Future<User> getUser();
  Stream<Either<ReviewFailure, List<Review>>> watchAll(String id);
  Future<Either<ReviewFailure, Unit>> update(Review updatedReview);
}
