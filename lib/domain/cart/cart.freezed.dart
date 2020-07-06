// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartTearOff {
  const _$CartTearOff();

  _Cart call(
      {UniqueId id,
      @required KtList<CartItem> items,
      @required Price total,
      UniqueId userId}) {
    return _Cart(
      id: id,
      items: items,
      total: total,
      userId: userId,
    );
  }
}

// ignore: unused_element
const $Cart = _$CartTearOff();

mixin _$Cart {
  UniqueId get id;
  KtList<CartItem> get items;
  Price get total;
  UniqueId get userId;

  $CartCopyWith<Cart> get copyWith;
}

abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, KtList<CartItem> items, Price total, UniqueId userId});
}

class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object id = freezed,
    Object items = freezed,
    Object total = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      items: items == freezed ? _value.items : items as KtList<CartItem>,
      total: total == freezed ? _value.total : total as Price,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, KtList<CartItem> items, Price total, UniqueId userId});
}

class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object id = freezed,
    Object items = freezed,
    Object total = freezed,
    Object userId = freezed,
  }) {
    return _then(_Cart(
      id: id == freezed ? _value.id : id as UniqueId,
      items: items == freezed ? _value.items : items as KtList<CartItem>,
      total: total == freezed ? _value.total : total as Price,
      userId: userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

class _$_Cart with DiagnosticableTreeMixin implements _Cart {
  const _$_Cart(
      {this.id, @required this.items, @required this.total, this.userId})
      : assert(items != null),
        assert(total != null);

  @override
  final UniqueId id;
  @override
  final KtList<CartItem> items;
  @override
  final Price total;
  @override
  final UniqueId userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cart(id: $id, items: $items, total: $total, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {UniqueId id,
      @required KtList<CartItem> items,
      @required Price total,
      UniqueId userId}) = _$_Cart;

  @override
  UniqueId get id;
  @override
  KtList<CartItem> get items;
  @override
  Price get total;
  @override
  UniqueId get userId;
  @override
  _$CartCopyWith<_Cart> get copyWith;
}
