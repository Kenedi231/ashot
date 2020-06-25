import 'package:ashot/domain/core/value_objects.dart';
import 'package:ashot/domain/profile/profile.dart';
import 'package:ashot/domain/review/review.dart';
import 'package:ashot/infrastructure/profile/profile_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
abstract class ReviewDTO with _$ReviewDTO {
  factory ReviewDTO({
    @JsonKey(ignore: true) String id,
    @required String comment,
    @required String product_id,
    double rate,
    ProfileDTO user,
  }) = _ReviewDTO;

  factory ReviewDTO.fromDomain(Review review) {
    return ReviewDTO(
      id: review.id.getOrCrash(),
      comment: review.comment.getOrElse(''),
      product_id: review.product_id.getOrCrash(),
      rate: review.rate.getOrElse(0.0),
      user: ProfileDTO.fromDomain(review.user),
    );
  }

  factory ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$ReviewDTOFromJson(json);

  factory ReviewDTO.fromFirestore(DocumentSnapshot doc) {
    return ReviewDTO.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ReviewDTOX on ReviewDTO {
  Review toDomain() {
    return Review(
      id: UniqueId.fromUniqueString(id),
      comment: Comment(comment),
      product_id: UniqueId.fromUniqueString(product_id),
      rate: Rate(rate),
      user: _reviewProfileTODomain(user),
    );
  }

  Profile _reviewProfileTODomain(person) {
    return Profile.empty().copyWith(
      id: UniqueId.fromUniqueString(person.id as String),
      avatar: URL(person.avatar as String),
      name: StringSingleLine(person.name as String),
      emailAddress: EmailAddress(person.email as String),
    );
  }
}