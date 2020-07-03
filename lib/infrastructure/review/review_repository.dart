import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/catalog/product.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/review/i_review_repository.dart';
import '../../domain/review/review.dart';
import '../../domain/review/review_failure.dart';
import '../catalog/catalog_dto.dart';
import '../core/firestore_helpers.dart';
import '../profile/profile_dto.dart';
import 'review_dto.dart';

@prod
@lazySingleton
@RegisterAs(IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final Firestore _firestore;

  ReviewRepository(this._firestore);

  List<Review> reviews;
  Product currentProduct;

  

  @override
  Stream<Either<ReviewFailure, List<Review>>> watchAll(Product product) async* {
    currentProduct = product;
    final collection = await _firestore.reviews();
    final documents = (
      await collection.where(
        'product_id',
        isEqualTo: product.id.getOrCrash(),
      ).getDocuments()
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
    final productsCollection = await _firestore.products();
    final reviewsCollection = await _firestore.reviews();
    final doc = await (await _firestore.userDocument()).snapshots().first;

    final profile = ProfileDTO.fromFirestore(doc).toDomain();
    final Review review = newReview.copyWith(
      id: UniqueId.fromUniqueString('new_review'),
      product_id: UniqueId.fromUniqueString(currentProduct.id.getOrCrash()),
      user: profile,
      date: Timestamp.now(),
    );

    final updatedProduct = getUpdatedProduct(newReview.rate.getOrElse(0.0));
    reviews.add(review);

    try {
      final Map<String, dynamic> json = ReviewDTO.fromDomain(review).toJson();  
      json['date'] = Timestamp.fromDate(DateTime.parse(json['date'] as String));
      await reviewsCollection.add(json);

      await productsCollection
        .document(updatedProduct.id.getOrCrash())
        .setData(ProductDto.fromDomain(updatedProduct).toJson());

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<ReviewFailure, Unit>> removeReview(Review review) async {
    final productsCollection = await _firestore.products();
    final reviewsCollection = await _firestore.reviews();

    try {
      reviews.removeWhere((element) => element.id.getOrCrash() == review.id.getOrCrash());
      final updatedProduct = getUpdatedProduct(0.0);
      await reviewsCollection.document(review.id.getOrCrash()).delete();

      await productsCollection
        .document(updatedProduct.id.getOrCrash())
        .setData(ProductDto.fromDomain(updatedProduct).toJson());

      return right(unit);
    } on PlatformException catch (_) {
      return left(const ReviewFailure.unexpected());
    }
  }

  Product getUpdatedProduct(double initRate) {
    final countReviews = reviews.length + (initRate != 0.0 ? 1 : 0);
    final double commonRate = reviews.fold(
      initRate,
      (previousValue, element) => previousValue + element.rate.getOrElse(0.0),
    );
    
    final updatedProduct = currentProduct.copyWith(
      countReviews: Count(countReviews),
      rate: Rate(commonRate / countReviews),
    ); 

    return updatedProduct;
  }

  @override
  Either<ReviewFailure, List<Review>> getCurrentReviews() {
    return right(reviews);
  }

}
