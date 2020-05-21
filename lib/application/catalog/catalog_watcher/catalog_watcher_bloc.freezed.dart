// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catalog_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CatalogWatcherEventTearOff {
  const _$CatalogWatcherEventTearOff();

  _WatchAll watchAll() {
    return const _WatchAll();
  }

  _CatalogReceived catalogReceived(
      Either<CatalogFailure, List<Product>> failureOrProducts) {
    return _CatalogReceived(
      failureOrProducts,
    );
  }
}

// ignore: unused_element
const $CatalogWatcherEvent = _$CatalogWatcherEventTearOff();

mixin _$CatalogWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result catalogReceived(
            Either<CatalogFailure, List<Product>> failureOrProducts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(
        Either<CatalogFailure, List<Product>> failureOrProducts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result catalogReceived(_CatalogReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result catalogReceived(_CatalogReceived value),
    @required Result orElse(),
  });
}

abstract class $CatalogWatcherEventCopyWith<$Res> {
  factory $CatalogWatcherEventCopyWith(
          CatalogWatcherEvent value, $Res Function(CatalogWatcherEvent) then) =
      _$CatalogWatcherEventCopyWithImpl<$Res>;
}

class _$CatalogWatcherEventCopyWithImpl<$Res>
    implements $CatalogWatcherEventCopyWith<$Res> {
  _$CatalogWatcherEventCopyWithImpl(this._value, this._then);

  final CatalogWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CatalogWatcherEvent) _then;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$CatalogWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'CatalogWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result catalogReceived(
            Either<CatalogFailure, List<Product>> failureOrProducts),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(
        Either<CatalogFailure, List<Product>> failureOrProducts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result catalogReceived(_CatalogReceived value),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result catalogReceived(_CatalogReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements CatalogWatcherEvent {
  const factory _WatchAll() = _$_WatchAll;
}

abstract class _$CatalogReceivedCopyWith<$Res> {
  factory _$CatalogReceivedCopyWith(
          _CatalogReceived value, $Res Function(_CatalogReceived) then) =
      __$CatalogReceivedCopyWithImpl<$Res>;
  $Res call({Either<CatalogFailure, List<Product>> failureOrProducts});
}

class __$CatalogReceivedCopyWithImpl<$Res>
    extends _$CatalogWatcherEventCopyWithImpl<$Res>
    implements _$CatalogReceivedCopyWith<$Res> {
  __$CatalogReceivedCopyWithImpl(
      _CatalogReceived _value, $Res Function(_CatalogReceived) _then)
      : super(_value, (v) => _then(v as _CatalogReceived));

  @override
  _CatalogReceived get _value => super._value as _CatalogReceived;

  @override
  $Res call({
    Object failureOrProducts = freezed,
  }) {
    return _then(_CatalogReceived(
      failureOrProducts == freezed
          ? _value.failureOrProducts
          : failureOrProducts as Either<CatalogFailure, List<Product>>,
    ));
  }
}

class _$_CatalogReceived implements _CatalogReceived {
  const _$_CatalogReceived(this.failureOrProducts)
      : assert(failureOrProducts != null);

  @override
  final Either<CatalogFailure, List<Product>> failureOrProducts;

  @override
  String toString() {
    return 'CatalogWatcherEvent.catalogReceived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatalogReceived &&
            (identical(other.failureOrProducts, failureOrProducts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProducts, failureOrProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProducts);

  @override
  _$CatalogReceivedCopyWith<_CatalogReceived> get copyWith =>
      __$CatalogReceivedCopyWithImpl<_CatalogReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result catalogReceived(
            Either<CatalogFailure, List<Product>> failureOrProducts),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return catalogReceived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(
        Either<CatalogFailure, List<Product>> failureOrProducts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catalogReceived != null) {
      return catalogReceived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAll(_WatchAll value),
    @required Result catalogReceived(_CatalogReceived value),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return catalogReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAll(_WatchAll value),
    Result catalogReceived(_CatalogReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catalogReceived != null) {
      return catalogReceived(this);
    }
    return orElse();
  }
}

abstract class _CatalogReceived implements CatalogWatcherEvent {
  const factory _CatalogReceived(
          Either<CatalogFailure, List<Product>> failureOrProducts) =
      _$_CatalogReceived;

  Either<CatalogFailure, List<Product>> get failureOrProducts;
  _$CatalogReceivedCopyWith<_CatalogReceived> get copyWith;
}

class _$CatalogWatcherStateTearOff {
  const _$CatalogWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(List<Product> products) {
    return LoadSuccess(
      products,
    );
  }

  LoadFailure loadFailure(CatalogFailure catalogFailure) {
    return LoadFailure(
      catalogFailure,
    );
  }
}

// ignore: unused_element
const $CatalogWatcherState = _$CatalogWatcherStateTearOff();

mixin _$CatalogWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Product> products),
    @required Result loadFailure(CatalogFailure catalogFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Product> products),
    Result loadFailure(CatalogFailure catalogFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $CatalogWatcherStateCopyWith<$Res> {
  factory $CatalogWatcherStateCopyWith(
          CatalogWatcherState value, $Res Function(CatalogWatcherState) then) =
      _$CatalogWatcherStateCopyWithImpl<$Res>;
}

class _$CatalogWatcherStateCopyWithImpl<$Res>
    implements $CatalogWatcherStateCopyWith<$Res> {
  _$CatalogWatcherStateCopyWithImpl(this._value, this._then);

  final CatalogWatcherState _value;
  // ignore: unused_field
  final $Res Function(CatalogWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$CatalogWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CatalogWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Product> products),
    @required Result loadFailure(CatalogFailure catalogFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Product> products),
    Result loadFailure(CatalogFailure catalogFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CatalogWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$CatalogWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'CatalogWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Product> products),
    @required Result loadFailure(CatalogFailure catalogFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Product> products),
    Result loadFailure(CatalogFailure catalogFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements CatalogWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$CatalogWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(LoadSuccess(
      products == freezed ? _value.products : products as List<Product>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.products) : assert(products != null);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'CatalogWatcherState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Product> products),
    @required Result loadFailure(CatalogFailure catalogFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Product> products),
    Result loadFailure(CatalogFailure catalogFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements CatalogWatcherState {
  const factory LoadSuccess(List<Product> products) = _$LoadSuccess;

  List<Product> get products;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({CatalogFailure catalogFailure});

  $CatalogFailureCopyWith<$Res> get catalogFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$CatalogWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object catalogFailure = freezed,
  }) {
    return _then(LoadFailure(
      catalogFailure == freezed
          ? _value.catalogFailure
          : catalogFailure as CatalogFailure,
    ));
  }

  @override
  $CatalogFailureCopyWith<$Res> get catalogFailure {
    if (_value.catalogFailure == null) {
      return null;
    }
    return $CatalogFailureCopyWith<$Res>(_value.catalogFailure, (value) {
      return _then(_value.copyWith(catalogFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.catalogFailure) : assert(catalogFailure != null);

  @override
  final CatalogFailure catalogFailure;

  @override
  String toString() {
    return 'CatalogWatcherState.loadFailure(catalogFailure: $catalogFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.catalogFailure, catalogFailure) ||
                const DeepCollectionEquality()
                    .equals(other.catalogFailure, catalogFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catalogFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Product> products),
    @required Result loadFailure(CatalogFailure catalogFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(catalogFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Product> products),
    Result loadFailure(CatalogFailure catalogFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(catalogFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements CatalogWatcherState {
  const factory LoadFailure(CatalogFailure catalogFailure) = _$LoadFailure;

  CatalogFailure get catalogFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
