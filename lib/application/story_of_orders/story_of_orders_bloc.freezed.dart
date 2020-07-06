// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'story_of_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StoryOfOrdersEventTearOff {
  const _$StoryOfOrdersEventTearOff();

  _WatchAll watchAll() {
    return const _WatchAll();
  }

  _CatalogReceived catalogReceived(
      Either<CartFailure, List<Cart>> failureOrOrders) {
    return _CatalogReceived(
      failureOrOrders,
    );
  }
}

// ignore: unused_element
const $StoryOfOrdersEvent = _$StoryOfOrdersEventTearOff();

mixin _$StoryOfOrdersEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
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

abstract class $StoryOfOrdersEventCopyWith<$Res> {
  factory $StoryOfOrdersEventCopyWith(
          StoryOfOrdersEvent value, $Res Function(StoryOfOrdersEvent) then) =
      _$StoryOfOrdersEventCopyWithImpl<$Res>;
}

class _$StoryOfOrdersEventCopyWithImpl<$Res>
    implements $StoryOfOrdersEventCopyWith<$Res> {
  _$StoryOfOrdersEventCopyWithImpl(this._value, this._then);

  final StoryOfOrdersEvent _value;
  // ignore: unused_field
  final $Res Function(StoryOfOrdersEvent) _then;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$StoryOfOrdersEventCopyWithImpl<$Res>
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
    return 'StoryOfOrdersEvent.watchAll()';
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
        Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
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

abstract class _WatchAll implements StoryOfOrdersEvent {
  const factory _WatchAll() = _$_WatchAll;
}

abstract class _$CatalogReceivedCopyWith<$Res> {
  factory _$CatalogReceivedCopyWith(
          _CatalogReceived value, $Res Function(_CatalogReceived) then) =
      __$CatalogReceivedCopyWithImpl<$Res>;
  $Res call({Either<CartFailure, List<Cart>> failureOrOrders});
}

class __$CatalogReceivedCopyWithImpl<$Res>
    extends _$StoryOfOrdersEventCopyWithImpl<$Res>
    implements _$CatalogReceivedCopyWith<$Res> {
  __$CatalogReceivedCopyWithImpl(
      _CatalogReceived _value, $Res Function(_CatalogReceived) _then)
      : super(_value, (v) => _then(v as _CatalogReceived));

  @override
  _CatalogReceived get _value => super._value as _CatalogReceived;

  @override
  $Res call({
    Object failureOrOrders = freezed,
  }) {
    return _then(_CatalogReceived(
      failureOrOrders == freezed
          ? _value.failureOrOrders
          : failureOrOrders as Either<CartFailure, List<Cart>>,
    ));
  }
}

class _$_CatalogReceived implements _CatalogReceived {
  const _$_CatalogReceived(this.failureOrOrders)
      : assert(failureOrOrders != null);

  @override
  final Either<CartFailure, List<Cart>> failureOrOrders;

  @override
  String toString() {
    return 'StoryOfOrdersEvent.catalogReceived(failureOrOrders: $failureOrOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatalogReceived &&
            (identical(other.failureOrOrders, failureOrOrders) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrOrders, failureOrOrders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrOrders);

  @override
  _$CatalogReceivedCopyWith<_CatalogReceived> get copyWith =>
      __$CatalogReceivedCopyWithImpl<_CatalogReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAll(),
    @required
        Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
  }) {
    assert(watchAll != null);
    assert(catalogReceived != null);
    return catalogReceived(failureOrOrders);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAll(),
    Result catalogReceived(Either<CartFailure, List<Cart>> failureOrOrders),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catalogReceived != null) {
      return catalogReceived(failureOrOrders);
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

abstract class _CatalogReceived implements StoryOfOrdersEvent {
  const factory _CatalogReceived(
      Either<CartFailure, List<Cart>> failureOrOrders) = _$_CatalogReceived;

  Either<CartFailure, List<Cart>> get failureOrOrders;
  _$CatalogReceivedCopyWith<_CatalogReceived> get copyWith;
}

class _$StoryOfOrdersStateTearOff {
  const _$StoryOfOrdersStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(List<Cart> orders) {
    return LoadSuccess(
      orders,
    );
  }

  LoadFailure loadFailure(CartFailure cartFailure) {
    return LoadFailure(
      cartFailure,
    );
  }
}

// ignore: unused_element
const $StoryOfOrdersState = _$StoryOfOrdersStateTearOff();

mixin _$StoryOfOrdersState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Cart> orders),
    @required Result loadFailure(CartFailure cartFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Cart> orders),
    Result loadFailure(CartFailure cartFailure),
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

abstract class $StoryOfOrdersStateCopyWith<$Res> {
  factory $StoryOfOrdersStateCopyWith(
          StoryOfOrdersState value, $Res Function(StoryOfOrdersState) then) =
      _$StoryOfOrdersStateCopyWithImpl<$Res>;
}

class _$StoryOfOrdersStateCopyWithImpl<$Res>
    implements $StoryOfOrdersStateCopyWith<$Res> {
  _$StoryOfOrdersStateCopyWithImpl(this._value, this._then);

  final StoryOfOrdersState _value;
  // ignore: unused_field
  final $Res Function(StoryOfOrdersState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$StoryOfOrdersStateCopyWithImpl<$Res>
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
    return 'StoryOfOrdersState.initial()';
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
    @required Result loadSuccess(List<Cart> orders),
    @required Result loadFailure(CartFailure cartFailure),
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
    Result loadSuccess(List<Cart> orders),
    Result loadFailure(CartFailure cartFailure),
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

abstract class Initial implements StoryOfOrdersState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$StoryOfOrdersStateCopyWithImpl<$Res>
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
    return 'StoryOfOrdersState.loadInProgress()';
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
    @required Result loadSuccess(List<Cart> orders),
    @required Result loadFailure(CartFailure cartFailure),
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
    Result loadSuccess(List<Cart> orders),
    Result loadFailure(CartFailure cartFailure),
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

abstract class DataTransferInProgress implements StoryOfOrdersState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Cart> orders});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$StoryOfOrdersStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object orders = freezed,
  }) {
    return _then(LoadSuccess(
      orders == freezed ? _value.orders : orders as List<Cart>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.orders) : assert(orders != null);

  @override
  final List<Cart> orders;

  @override
  String toString() {
    return 'StoryOfOrdersState.loadSuccess(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orders);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Cart> orders),
    @required Result loadFailure(CartFailure cartFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(orders);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Cart> orders),
    Result loadFailure(CartFailure cartFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(orders);
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

abstract class LoadSuccess implements StoryOfOrdersState {
  const factory LoadSuccess(List<Cart> orders) = _$LoadSuccess;

  List<Cart> get orders;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({CartFailure cartFailure});

  $CartFailureCopyWith<$Res> get cartFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$StoryOfOrdersStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object cartFailure = freezed,
  }) {
    return _then(LoadFailure(
      cartFailure == freezed ? _value.cartFailure : cartFailure as CartFailure,
    ));
  }

  @override
  $CartFailureCopyWith<$Res> get cartFailure {
    if (_value.cartFailure == null) {
      return null;
    }
    return $CartFailureCopyWith<$Res>(_value.cartFailure, (value) {
      return _then(_value.copyWith(cartFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.cartFailure) : assert(cartFailure != null);

  @override
  final CartFailure cartFailure;

  @override
  String toString() {
    return 'StoryOfOrdersState.loadFailure(cartFailure: $cartFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.cartFailure, cartFailure) ||
                const DeepCollectionEquality()
                    .equals(other.cartFailure, cartFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cartFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<Cart> orders),
    @required Result loadFailure(CartFailure cartFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(cartFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<Cart> orders),
    Result loadFailure(CartFailure cartFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(cartFailure);
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

abstract class LoadFailure implements StoryOfOrdersState {
  const factory LoadFailure(CartFailure cartFailure) = _$LoadFailure;

  CartFailure get cartFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
