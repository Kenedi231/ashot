// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call({@required Product dish, @required int count}) {
    return _CartItem(
      dish: dish,
      count: count,
    );
  }
}

// ignore: unused_element
const $CartItem = _$CartItemTearOff();

mixin _$CartItem {
  Product get dish;
  int get count;

  $CartItemCopyWith<CartItem> get copyWith;
}

abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({Product dish, int count});

  $ProductCopyWith<$Res> get dish;
}

class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object dish = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      dish: dish == freezed ? _value.dish : dish as Product,
      count: count == freezed ? _value.count : count as int,
    ));
  }

  @override
  $ProductCopyWith<$Res> get dish {
    if (_value.dish == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value));
    });
  }
}

abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call({Product dish, int count});

  @override
  $ProductCopyWith<$Res> get dish;
}

class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object dish = freezed,
    Object count = freezed,
  }) {
    return _then(_CartItem(
      dish: dish == freezed ? _value.dish : dish as Product,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_CartItem implements _CartItem {
  const _$_CartItem({@required this.dish, @required this.count})
      : assert(dish != null),
        assert(count != null);

  @override
  final Product dish;
  @override
  final int count;

  @override
  String toString() {
    return 'CartItem(dish: $dish, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItem &&
            (identical(other.dish, dish) ||
                const DeepCollectionEquality().equals(other.dish, dish)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dish) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);

  @override
  // TODO: implement id
  UniqueId get id => throw UnimplementedError();
}

abstract class _CartItem implements CartItem {
  const factory _CartItem({@required Product dish, @required int count}) =
      _$_CartItem;

  @override
  Product get dish;
  @override
  int get count;
  @override
  _$CartItemCopyWith<_CartItem> get copyWith;
}
