// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDTO _$_$_ReviewDTOFromJson(Map<String, dynamic> json) {
  return _$_ReviewDTO(
    comment: json['comment'] as String,
    product_id: json['product_id'] as String,
    rate: (json['rate'] as num)?.toDouble(),
    user: json['user'] == null
        ? null
        : ProfileDTO.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReviewDTOToJson(_$_ReviewDTO instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'product_id': instance.product_id,
      'rate': instance.rate,
      'user': instance.user?.toJson(),
    };
