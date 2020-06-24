import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/review/i_review_repository.dart';
import '../../domain/review/review.dart';
import '../../domain/review/review_failure.dart';
import '../core/firestore_helpers.dart';

@prod
@lazySingleton
@RegisterAs(IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final Firestore _firestore;

  ReviewRepository(this._firestore);

  @override
  Stream<Either<ReviewFailure, List<Review>>> watchAll() async* {
    final doc = await _firestore.reviews();
    final reviews = doc.where('product_id', isEqualTo: 'SLsjHfiGF46fnbe6LcIf');
    print(reviews);
    yield right<ReviewFailure, List<Review>>(List<Review>());
  }

  @override
  Future<Either<ReviewFailure, Unit>> update(Review updatedReview) async {
    return left(const ReviewFailure.unableToUpdate());
  }
}
