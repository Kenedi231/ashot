// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartTearOff {
  const _$CartTearOff();

  _Cart call({@required KtList<CartItem> items, @required Price total}) {
    return _Cart(
      items: items,
      total: total,
    );
  }
}

// ignore: unused_element
const $Cart = _$CartTearOff();

mixin _$Cart {
  KtList<CartItem> get items;
  Price get total;

  $CartCopyWith<Cart> get copyWith;
}

abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({KtList<CartItem> items, Price total});
}

class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object items = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as KtList<CartItem>,
      total: total == freezed ? _value.total : total as Price,
    ));
  }
}

abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({KtList<CartItem> items, Price total});
}

class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object items = freezed,
    Object total = freezed,
  }) {
    return _then(_Cart(
      items: items == freezed ? _value.items : items as KtList<CartItem>,
      total: total == freezed ? _value.total : total as Price,
    ));
  }
}

class _$_Cart with DiagnosticableTreeMixin implements _Cart {
  const _$_Cart({@required this.items, @required this.total})
      : assert(items != null),
        assert(total != null);

  @override
  final KtList<CartItem> items;
  @override
  final Price total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cart(items: $items, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cart'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total);

  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);

  @override
  // TODO: implement id
  UniqueId get id => throw UnimplementedError();
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {@required KtList<CartItem> items, @required Price total}) = _$_Cart;

  @override
  KtList<CartItem> get items;
  @override
  Price get total;
  @override
  _$CartCopyWith<_Cart> get copyWith;
}
