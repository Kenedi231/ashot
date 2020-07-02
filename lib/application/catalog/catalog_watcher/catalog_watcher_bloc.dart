import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/catalog/catalog_failure.dart';
import '../../../domain/catalog/i_catalog_repository.dart';
import '../../../domain/catalog/product.dart';

part 'catalog_watcher_bloc.freezed.dart';
part 'catalog_watcher_event.dart';
part 'catalog_watcher_state.dart';

@injectable
class CatalogWatcherBloc
    extends Bloc<CatalogWatcherEvent, CatalogWatcherState> {
  final ICatalogRepository _catalogRepository;

  CatalogWatcherBloc(this._catalogRepository);

  StreamSubscription<Either<CatalogFailure, List<Product>>>
      _productStreamSubscription;

  @override
  CatalogWatcherState get initialState => const CatalogWatcherState.initial();

  @override
  Stream<CatalogWatcherState> mapEventToState(
    CatalogWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const CatalogWatcherState.loadInProgress();
        await _productStreamSubscription?.cancel();
        _catalogRepository.watchAll().listen(
            (products) => add(CatalogWatcherEvent.catalogReceived(products)));
      },
      catalogReceived: (e) async* {
        yield e.failureOrProducts.fold(
          (f) => CatalogWatcherState.loadFailure(f),
          (products) => CatalogWatcherState.loadSuccess(products),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _productStreamSubscription?.cancel();
    return super.close();
  }
}