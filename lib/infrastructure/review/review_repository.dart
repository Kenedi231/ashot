import 'package:ashot/domain/core/value_objects.dart';
import 'package:ashot/infrastructure/profile/profile_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/review/i_review_repository.dart';
import '../../domain/review/review.dart';
import '../../domain/review/review_failure.dart';
import '../core/firestore_helpers.dart';
import 'review_dto.dart';

@prod
@lazySingleton
@RegisterAs(IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final Firestore _firestore;

  ReviewRepository(this._firestore);

  List<Review> reviews;
  String productId;

  @override
  Stream<Either<ReviewFailure, List<Review>>> watchAll(String id) async* {
    productId = id;
    final collection = await _firestore.reviews();
    final documents = (
      await collection.where('product_id', isEqualTo: id).getDocuments()
    ).documents;

    reviews = List.from(
      documents.map(
        (doc) => ReviewDTO.fromFirestore(doc).toDomain(),
      )
    );

    yield right<ReviewFailure, List<Review>>(reviews);
  }

  @override
  Future<Either<ReviewFailure, Unit>> update(Review updatedReview) async {
    return left(const ReviewFailure.unableToUpdate()); // TODO: edit review
  }

  @override
  Future<User> getUser() {
    return _firestore.authentificatedUser();
  }

  @override
  Future<Either<ReviewFailure, Unit>> addNewReview(Review newReview) async {
    final reviewsCollection = await _firestore.reviews();
    final doc = await (await _firestore.userDocument()).snapshots().first;
    final profile = ProfileDTO.fromFirestore(doc).toDomain();
    final Review review = newReview.copyWith(
      id: UniqueId.fromUniqueString('new_review'),
      product_id: UniqueId.fromUniqueString(productId),
      user: profile,
      date: Timestamp.now(),
    );

    try {
      final Map<String, dynamic> json = ReviewDTO.fromDomain(review).toJson();  
      json['date'] = Timestamp.fromDate(DateTime.parse(json['date'] as String));
      await reviewsCollection.add(json);

      return right(unit);
    } on PlatformException catch (e) {
      return left(const ReviewFailure.unexpected());
    }
  }

}
