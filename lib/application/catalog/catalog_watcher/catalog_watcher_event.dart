part of 'catalog_watcher_bloc.dart';

@freezed
abstract class CatalogWatcherEvent with _$CatalogWatcherEvent {
  const factory CatalogWatcherEvent.watchAll() = _WatchAll;

  const factory CatalogWatcherEvent.catalogReceived(
          Either<CatalogFailure, List<Product>> failureOrProducts) =
      _CatalogReceived;
}
