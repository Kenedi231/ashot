import 'package:dartz/dartz.dart';

import 'catalog_failure.dart';
import 'product.dart';

abstract class ICatalogRepository {
  Stream<Either<CatalogFailure, List<Product>>> watchAll();
}
