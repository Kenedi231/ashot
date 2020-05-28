import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/catalog/catalog_failure.dart';
import '../../domain/catalog/i_catalog_repository.dart';
import '../../domain/catalog/product.dart';
import '../core/firestore_helpers.dart';
import 'catalog_dto.dart';

@prod
@lazySingleton
@RegisterAs(ICatalogRepository)
class CatalogRepository implements ICatalogRepository {
  final Firestore _firestore;

  CatalogRepository(this._firestore);

  @override
  Stream<Either<CatalogFailure, List<Product>>> watchAll() async* {
    final productsCollection = await _firestore.products();

    yield* productsCollection
        .snapshots()
        .map<Either<CatalogFailure, List<Product>>>((snapshot) {

      return right<CatalogFailure, List<Product>>(
        List.from(
          snapshot.documents
              .map((doc) => ProductDto.fromFirestore(doc).toDomain()),
        ),
      );
    }).onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const CatalogFailure.insufficientPermissions());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const CatalogFailure.unexpected());
      }
    });
  }
}
