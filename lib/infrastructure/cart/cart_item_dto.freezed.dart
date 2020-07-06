// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) {
  return _CartItemDto.fromJson(json);
}

class _$CartItemDtoTearOff {
  const _$CartItemDtoTearOff();

  _CartItemDto call(
      {@JsonKey(ignore: true) String id, ProductDto dish, int count}) {
    return _CartItemDto(
      id: id,
      dish: dish,
      count: count,
    );
  }
}

// ignore: unused_element
const $CartItemDto = _$CartItemDtoTearOff();

mixin _$CartItemDto {
  @JsonKey(ignore: true)
  String get id;
  ProductDto get dish;
  int get count;

  Map<String, dynamic> toJson();
  $CartItemDtoCopyWith<CartItemDto> get copyWith;
}

abstract class $CartItemDtoCopyWith<$Res> {
  factory $CartItemDtoCopyWith(
          CartItemDto value, $Res Function(CartItemDto) then) =
      _$CartItemDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, ProductDto dish, int count});

  $ProductDtoCopyWith<$Res> get dish;
}

class _$CartItemDtoCopyWithImpl<$Res> implements $CartItemDtoCopyWith<$Res> {
  _$CartItemDtoCopyWithImpl(this._value, this._then);

  final CartItemDto _value;
  // ignore: unused_field
  final $Res Function(CartItemDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object dish = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      dish: dish == freezed ? _value.dish : dish as ProductDto,
      count: count == freezed ? _value.count : count as int,
    ));
  }

  @override
  $ProductDtoCopyWith<$Res> get dish {
    if (_value.dish == null) {
      return null;
    }
    return $ProductDtoCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value));
    });
  }
}

abstract class _$CartItemDtoCopyWith<$Res>
    implements $CartItemDtoCopyWith<$Res> {
  factory _$CartItemDtoCopyWith(
          _CartItemDto value, $Res Function(_CartItemDto) then) =
      __$CartItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, ProductDto dish, int count});

  @override
  $ProductDtoCopyWith<$Res> get dish;
}

class __$CartItemDtoCopyWithImpl<$Res> extends _$CartItemDtoCopyWithImpl<$Res>
    implements _$CartItemDtoCopyWith<$Res> {
  __$CartItemDtoCopyWithImpl(
      _CartItemDto _value, $Res Function(_CartItemDto) _then)
      : super(_value, (v) => _then(v as _CartItemDto));

  @override
  _CartItemDto get _value => super._value as _CartItemDto;

  @override
  $Res call({
    Object id = freezed,
    Object dish = freezed,
    Object count = freezed,
  }) {
    return _then(_CartItemDto(
      id: id == freezed ? _value.id : id as String,
      dish: dish == freezed ? _value.dish : dish as ProductDto,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

@JsonSerializable()
class _$_CartItemDto implements _CartItemDto {
  _$_CartItemDto({@JsonKey(ignore: true) this.id, this.dish, this.count});

  factory _$_CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CartItemDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final ProductDto dish;
  @override
  final int count;

  @override
  String toString() {
    return 'CartItemDto(id: $id, dish: $dish, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dish, dish) ||
                const DeepCollectionEquality().equals(other.dish, dish)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dish) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$CartItemDtoCopyWith<_CartItemDto> get copyWith =>
      __$CartItemDtoCopyWithImpl<_CartItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartItemDtoToJson(this);
  }
}

abstract class _CartItemDto implements CartItemDto {
  factory _CartItemDto(
      {@JsonKey(ignore: true) String id,
      ProductDto dish,
      int count}) = _$_CartItemDto;

  factory _CartItemDto.fromJson(Map<String, dynamic> json) =
      _$_CartItemDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  ProductDto get dish;
  @override
  int get count;
  @override
  _$CartItemDtoCopyWith<_CartItemDto> get copyWith;
}
