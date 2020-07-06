// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemDto _$_$_CartItemDtoFromJson(Map<String, dynamic> json) {
  return _$_CartItemDto(
    dish: json['dish'] == null
        ? null
        : ProductDto.fromJson(json['dish'] as Map<String, dynamic>),
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$_$_CartItemDtoToJson(_$_CartItemDto instance) =>
    <String, dynamic>{
      'dish': instance.dish?.toJson(),
      'count': instance.count,
    };
