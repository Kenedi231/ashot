import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product implements IEntity {
  const factory Product({
    @required UniqueId id,
    @required StringSingleLine name,
    @required StringMultLine description,
    @required Price price,
    @required StringSingleLine imageURL,
    Rate rate,
    Count countReviews,
  }) = _Product;
}
