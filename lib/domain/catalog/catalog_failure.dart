import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_failure.freezed.dart';

@freezed
abstract class CatalogFailure with _$CatalogFailure {
  const factory CatalogFailure.unexpected() = Unexpected;
  const factory CatalogFailure.insufficientPermissions() = InsufficientPermissions;
  const factory CatalogFailure.unableToUpdate() = UnableToUpdate;
}
