import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';
import 'cart_item.dart';


part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart implements IEntity {
  const factory Cart({
    UniqueId id,
    @required KtList<CartItem> items,
    @required Price total,
  }) = _Cart;
}