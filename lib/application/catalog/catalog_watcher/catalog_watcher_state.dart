part of 'catalog_watcher_bloc.dart';

@freezed
abstract class CatalogWatcherState with _$CatalogWatcherState {
  const factory CatalogWatcherState.initial() = Initial;
  const factory CatalogWatcherState.loadInProgress() = DataTransferInProgress;
  const factory CatalogWatcherState.loadSuccess(List<Product> products) =
      LoadSuccess;
  const factory CatalogWatcherState.loadFailure(CatalogFailure catalogFailure) =
      LoadFailure;
}
