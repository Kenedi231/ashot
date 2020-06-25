import 'package:ashot/infrastructure/review/review_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

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
  Stream<Either<ReviewFailure, List<Review>>> watchAll(String id) async* {
    final collection = await _firestore.reviews();
    final documents = (
      await collection.where('product_id', isEqualTo: id).getDocuments()
    ).documents;
    
    yield right<ReviewFailure, List<Review>>(
      List.from(
        documents.map(
          (doc) => ReviewDTO.fromFirestore(doc).toDomain(),
        )
      )
    );
  }

  @override
  Future<Either<ReviewFailure, Unit>> update(Review updatedReview) async {
    return left(const ReviewFailure.unableToUpdate());
  }
}
