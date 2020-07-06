// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDto _$_$_CartDtoFromJson(Map<String, dynamic> json) {
  return _$_CartDto(
    total: json['total'] as int,
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : CartItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$_$_CartDtoToJson(_$_CartDto instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'userId': instance.userId,
    };
