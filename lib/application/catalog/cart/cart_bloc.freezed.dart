// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartEventTearOff {
  const _$CartEventTearOff();

  _CartReceived cartReceived() {
    return const _CartReceived();
  }

  _AddToCart addToCart(Product addProduct) {
    return _AddToCart(
      addProduct,
    );
  }

  _UpdateCart updateCart(CartItem item, int deltaCount) {
    return _UpdateCart(
      item,
      deltaCount,
    );
  }

  _DeleteFromCart deleteFromCart(CartItem deletedProduct) {
    return _DeleteFromCart(
      deletedProduct,
    );
  }

  _ClearCart clearCart() {
    return const _ClearCart();
  }

  _ToPay toPay() {
    return const _ToPay();
  }
}

// ignore: unused_element
const $CartEvent = _$CartEventTearOff();

mixin _$CartEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  });
}

abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

abstract class _$CartReceivedCopyWith<$Res> {
  factory _$CartReceivedCopyWith(
          _CartReceived value, $Res Function(_CartReceived) then) =
      __$CartReceivedCopyWithImpl<$Res>;
}

class __$CartReceivedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$CartReceivedCopyWith<$Res> {
  __$CartReceivedCopyWithImpl(
      _CartReceived _value, $Res Function(_CartReceived) _then)
      : super(_value, (v) => _then(v as _CartReceived));

  @override
  _CartReceived get _value => super._value as _CartReceived;
}

class _$_CartReceived implements _CartReceived {
  const _$_CartReceived();

  @override
  String toString() {
    return 'CartEvent.cartReceived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartReceived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return cartReceived();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartReceived != null) {
      return cartReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return cartReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cartReceived != null) {
      return cartReceived(this);
    }
    return orElse();
  }
}

abstract class _CartReceived implements CartEvent {
  const factory _CartReceived() = _$_CartReceived;
}

abstract class _$AddToCartCopyWith<$Res> {
  factory _$AddToCartCopyWith(
          _AddToCart value, $Res Function(_AddToCart) then) =
      __$AddToCartCopyWithImpl<$Res>;
  $Res call({Product addProduct});

  $ProductCopyWith<$Res> get addProduct;
}

class __$AddToCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$AddToCartCopyWith<$Res> {
  __$AddToCartCopyWithImpl(_AddToCart _value, $Res Function(_AddToCart) _then)
      : super(_value, (v) => _then(v as _AddToCart));

  @override
  _AddToCart get _value => super._value as _AddToCart;

  @override
  $Res call({
    Object addProduct = freezed,
  }) {
    return _then(_AddToCart(
      addProduct == freezed ? _value.addProduct : addProduct as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get addProduct {
    if (_value.addProduct == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.addProduct, (value) {
      return _then(_value.copyWith(addProduct: value));
    });
  }
}

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(this.addProduct) : assert(addProduct != null);

  @override
  final Product addProduct;

  @override
  String toString() {
    return 'CartEvent.addToCart(addProduct: $addProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddToCart &&
            (identical(other.addProduct, addProduct) ||
                const DeepCollectionEquality()
                    .equals(other.addProduct, addProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addProduct);

  @override
  _$AddToCartCopyWith<_AddToCart> get copyWith =>
      __$AddToCartCopyWithImpl<_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return addToCart(addProduct);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToCart != null) {
      return addToCart(addProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(Product addProduct) = _$_AddToCart;

  Product get addProduct;
  _$AddToCartCopyWith<_AddToCart> get copyWith;
}

abstract class _$UpdateCartCopyWith<$Res> {
  factory _$UpdateCartCopyWith(
          _UpdateCart value, $Res Function(_UpdateCart) then) =
      __$UpdateCartCopyWithImpl<$Res>;
  $Res call({CartItem item, int deltaCount});

  $CartItemCopyWith<$Res> get item;
}

class __$UpdateCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$UpdateCartCopyWith<$Res> {
  __$UpdateCartCopyWithImpl(
      _UpdateCart _value, $Res Function(_UpdateCart) _then)
      : super(_value, (v) => _then(v as _UpdateCart));

  @override
  _UpdateCart get _value => super._value as _UpdateCart;

  @override
  $Res call({
    Object item = freezed,
    Object deltaCount = freezed,
  }) {
    return _then(_UpdateCart(
      item == freezed ? _value.item : item as CartItem,
      deltaCount == freezed ? _value.deltaCount : deltaCount as int,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $CartItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

class _$_UpdateCart implements _UpdateCart {
  const _$_UpdateCart(this.item, this.deltaCount)
      : assert(item != null),
        assert(deltaCount != null);

  @override
  final CartItem item;
  @override
  final int deltaCount;

  @override
  String toString() {
    return 'CartEvent.updateCart(item: $item, deltaCount: $deltaCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCart &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.deltaCount, deltaCount) ||
                const DeepCollectionEquality()
                    .equals(other.deltaCount, deltaCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(deltaCount);

  @override
  _$UpdateCartCopyWith<_UpdateCart> get copyWith =>
      __$UpdateCartCopyWithImpl<_UpdateCart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return updateCart(item, deltaCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCart != null) {
      return updateCart(item, deltaCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements CartEvent {
  const factory _UpdateCart(CartItem item, int deltaCount) = _$_UpdateCart;

  CartItem get item;
  int get deltaCount;
  _$UpdateCartCopyWith<_UpdateCart> get copyWith;
}

abstract class _$DeleteFromCartCopyWith<$Res> {
  factory _$DeleteFromCartCopyWith(
          _DeleteFromCart value, $Res Function(_DeleteFromCart) then) =
      __$DeleteFromCartCopyWithImpl<$Res>;
  $Res call({CartItem deletedProduct});

  $CartItemCopyWith<$Res> get deletedProduct;
}

class __$DeleteFromCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$DeleteFromCartCopyWith<$Res> {
  __$DeleteFromCartCopyWithImpl(
      _DeleteFromCart _value, $Res Function(_DeleteFromCart) _then)
      : super(_value, (v) => _then(v as _DeleteFromCart));

  @override
  _DeleteFromCart get _value => super._value as _DeleteFromCart;

  @override
  $Res call({
    Object deletedProduct = freezed,
  }) {
    return _then(_DeleteFromCart(
      deletedProduct == freezed
          ? _value.deletedProduct
          : deletedProduct as CartItem,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get deletedProduct {
    if (_value.deletedProduct == null) {
      return null;
    }
    return $CartItemCopyWith<$Res>(_value.deletedProduct, (value) {
      return _then(_value.copyWith(deletedProduct: value));
    });
  }
}

class _$_DeleteFromCart implements _DeleteFromCart {
  const _$_DeleteFromCart(this.deletedProduct) : assert(deletedProduct != null);

  @override
  final CartItem deletedProduct;

  @override
  String toString() {
    return 'CartEvent.deleteFromCart(deletedProduct: $deletedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFromCart &&
            (identical(other.deletedProduct, deletedProduct) ||
                const DeepCollectionEquality()
                    .equals(other.deletedProduct, deletedProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deletedProduct);

  @override
  _$DeleteFromCartCopyWith<_DeleteFromCart> get copyWith =>
      __$DeleteFromCartCopyWithImpl<_DeleteFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return deleteFromCart(deletedProduct);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFromCart != null) {
      return deleteFromCart(deletedProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return deleteFromCart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFromCart != null) {
      return deleteFromCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteFromCart implements CartEvent {
  const factory _DeleteFromCart(CartItem deletedProduct) = _$_DeleteFromCart;

  CartItem get deletedProduct;
  _$DeleteFromCartCopyWith<_DeleteFromCart> get copyWith;
}

abstract class _$ClearCartCopyWith<$Res> {
  factory _$ClearCartCopyWith(
          _ClearCart value, $Res Function(_ClearCart) then) =
      __$ClearCartCopyWithImpl<$Res>;
}

class __$ClearCartCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$ClearCartCopyWith<$Res> {
  __$ClearCartCopyWithImpl(_ClearCart _value, $Res Function(_ClearCart) _then)
      : super(_value, (v) => _then(v as _ClearCart));

  @override
  _ClearCart get _value => super._value as _ClearCart;
}

class _$_ClearCart implements _ClearCart {
  const _$_ClearCart();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClearCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return clearCart();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements CartEvent {
  const factory _ClearCart() = _$_ClearCart;
}

abstract class _$ToPayCopyWith<$Res> {
  factory _$ToPayCopyWith(_ToPay value, $Res Function(_ToPay) then) =
      __$ToPayCopyWithImpl<$Res>;
}

class __$ToPayCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$ToPayCopyWith<$Res> {
  __$ToPayCopyWithImpl(_ToPay _value, $Res Function(_ToPay) _then)
      : super(_value, (v) => _then(v as _ToPay));

  @override
  _ToPay get _value => super._value as _ToPay;
}

class _$_ToPay implements _ToPay {
  const _$_ToPay();

  @override
  String toString() {
    return 'CartEvent.toPay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ToPay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cartReceived(),
    @required Result addToCart(Product addProduct),
    @required Result updateCart(CartItem item, int deltaCount),
    @required Result deleteFromCart(CartItem deletedProduct),
    @required Result clearCart(),
    @required Result toPay(),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return toPay();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cartReceived(),
    Result addToCart(Product addProduct),
    Result updateCart(CartItem item, int deltaCount),
    Result deleteFromCart(CartItem deletedProduct),
    Result clearCart(),
    Result toPay(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toPay != null) {
      return toPay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cartReceived(_CartReceived value),
    @required Result addToCart(_AddToCart value),
    @required Result updateCart(_UpdateCart value),
    @required Result deleteFromCart(_DeleteFromCart value),
    @required Result clearCart(_ClearCart value),
    @required Result toPay(_ToPay value),
  }) {
    assert(cartReceived != null);
    assert(addToCart != null);
    assert(updateCart != null);
    assert(deleteFromCart != null);
    assert(clearCart != null);
    assert(toPay != null);
    return toPay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cartReceived(_CartReceived value),
    Result addToCart(_AddToCart value),
    Result updateCart(_UpdateCart value),
    Result deleteFromCart(_DeleteFromCart value),
    Result clearCart(_ClearCart value),
    Result toPay(_ToPay value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toPay != null) {
      return toPay(this);
    }
    return orElse();
  }
}

abstract class _ToPay implements CartEvent {
  const factory _ToPay() = _$_ToPay;
}

class _$CartStateTearOff {
  const _$CartStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Received received(Cart cart) {
    return Received(
      cart,
    );
  }
}

// ignore: unused_element
const $CartState = _$CartStateTearOff();

mixin _$CartState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result received(Cart cart),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result received(Cart cart),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result received(Received value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result received(Received value),
    @required Result orElse(),
  });
}

abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
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
    return 'CartState.initial()';
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
    @required Result received(Cart cart),
  }) {
    assert(initial != null);
    assert(received != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result received(Cart cart),
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
    @required Result received(Received value),
  }) {
    assert(initial != null);
    assert(received != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result received(Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CartState {
  const factory Initial() = _$Initial;
}

abstract class $ReceivedCopyWith<$Res> {
  factory $ReceivedCopyWith(Received value, $Res Function(Received) then) =
      _$ReceivedCopyWithImpl<$Res>;
  $Res call({Cart cart});

  $CartCopyWith<$Res> get cart;
}

class _$ReceivedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $ReceivedCopyWith<$Res> {
  _$ReceivedCopyWithImpl(Received _value, $Res Function(Received) _then)
      : super(_value, (v) => _then(v as Received));

  @override
  Received get _value => super._value as Received;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(Received(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    if (_value.cart == null) {
      return null;
    }
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

class _$Received implements Received {
  const _$Received(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartState.received(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Received &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @override
  $ReceivedCopyWith<Received> get copyWith =>
      _$ReceivedCopyWithImpl<Received>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result received(Cart cart),
  }) {
    assert(initial != null);
    assert(received != null);
    return received(cart);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result received(Cart cart),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (received != null) {
      return received(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result received(Received value),
  }) {
    assert(initial != null);
    assert(received != null);
    return received(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result received(Received value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class Received implements CartState {
  const factory Received(Cart cart) = _$Received;

  Cart get cart;
  $ReceivedCopyWith<Received> get copyWith;
}
