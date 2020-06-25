import 'package:ashot/domain/profile/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review implements IEntity {
  const factory Review({
    UniqueId id,
    UniqueId product_id,
    Rate rate,
    Comment comment,
    Profile user,
  }) = _Review;

  factory Review.empty() => Review(
    rate: Rate(0.0),
    comment: Comment(''),
  );
}
