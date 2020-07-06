import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/cart/cart.dart';
import '../../domain/core/value_objects.dart';
import 'cart_item_dto.dart';

part 'cart_dto.freezed.dart';
part 'cart_dto.g.dart';

@freezed
abstract class CartDto with _$CartDto {
  factory CartDto({
    @JsonKey(ignore: true) String id,
    int total,
    List<CartItemDto> items,
    String userId,
  }) = _CartDto;

  factory CartDto.fromDomain(Cart cart) {
    return CartDto(
      id: cart.id?.getOrCrash() ?? 'new_order',
      total: cart.total.getOrCrash(),
      items: cart.items.dart.map((e) => CartItemDto.fromDomain(e)).toList(),
      userId: cart.userId.getOrCrash(),
    );
  }

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);

  factory CartDto.fromFirestore(DocumentSnapshot doc) {
    return CartDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension CartDtoX on CartDto {
  Cart toDomain() {
    return Cart(
      id: UniqueId.fromUniqueString(id),
      total: Price(total),
      items: items.kt.map((e) => e.toDomain()).toList(),
      userId: UniqueId.fromUniqueString(userId),
    );
  }
}
