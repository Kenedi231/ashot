// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogDto _$_$_CatalogDtoFromJson(Map<String, dynamic> json) {
  return _$_CatalogDto(
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as int,
    imageURL: json['imageURL'] as String,
    rate: (json['rate'] as num)?.toDouble(),
    countReviews: json['countReviews'] as int,
  );
}

Map<String, dynamic> _$_$_CatalogDtoToJson(_$_CatalogDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageURL': instance.imageURL,
      'rate': instance.rate,
      'countReviews': instance.countReviews,
    };
