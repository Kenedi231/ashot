import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/catalog/product.dart';
import '../../domain/core/value_objects.dart';

part 'catalog_dto.freezed.dart';
part 'catalog_dto.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  factory ProductDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String description,
    @required int price,
    @required String imageURL,
    double rate,
    int countReviews,
  }) = _CatalogDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      name: product.name.getOrCrash(),
      description: product.description.getOrCrash(),
      price: product.price.getOrCrash(),
      imageURL: product.imageURL.getOrCrash(),
      rate: product.rate.getOrCrash(),
      countReviews: product.countReviews.getOrElse(0),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ProductDtoX on ProductDto {
  Product toDomain() {
    return Product(
      id: UniqueId.fromFirebaseId(id),
      name: StringSingleLine(name),
      description: StringMultLine(description),
      price: Price(price),
      imageURL: StringSingleLine(imageURL),
      rate: Rate(rate),
      countReviews: Count(countReviews)
    );
  }
}
