import 'package:ashot/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/catalog/product.dart';
import '../../domain/core/entity.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem implements IEntity {
  const factory CartItem({
    @required Product dish,
    @required int count,
  }) = _CartItem;
}