import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/cart/cart_item.dart';
import '../../domain/core/value_objects.dart';
import '../catalog/catalog_dto.dart';

part 'cart_item_dto.freezed.dart';
part 'cart_item_dto.g.dart';

@freezed
abstract class CartItemDto with _$CartItemDto {
  factory CartItemDto({
    @JsonKey(ignore: true) String id,
    ProductDto dish,
    int count,
  }) = _CartItemDto;

  factory CartItemDto.fromDomain(CartItem cartItem) {
    return CartItemDto(
      id: cartItem.id?.getOrCrash() ?? 'cart_item',
      dish: ProductDto.fromDomain(cartItem.dish),
      count: cartItem.count.getOrCrash(),
    );
  }

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  factory CartItemDto.fromFirestore(DocumentSnapshot doc) {
    return CartItemDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension CartItemDtoX on CartItemDto {
  CartItem toDomain() {
    return CartItem(
      id: UniqueId.fromUniqueString(id ?? 'items'),
      dish: dish.toDomain(),
      count: Count(count),
    );
  }
}
