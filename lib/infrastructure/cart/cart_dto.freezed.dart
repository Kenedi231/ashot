// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CartDto _$CartDtoFromJson(Map<String, dynamic> json) {
  return _CartDto.fromJson(json);
}

class _$CartDtoTearOff {
  const _$CartDtoTearOff();

  _CartDto call(
      {@JsonKey(ignore: true) String id,
      int total,
      List<CartItemDto> items,
      String userId}) {
    return _CartDto(
      id: id,
      total: total,
      items: items,
      userId: userId,
    );
  }
}

// ignore: unused_element
const $CartDto = _$CartDtoTearOff();

mixin _$CartDto {
  @JsonKey(ignore: true)
  String get id;
  int get total;
  List<CartItemDto> get items;
  String get userId;

  Map<String, dynamic> toJson();
  $CartDtoCopyWith<CartDto> get copyWith;
}

abstract class $CartDtoCopyWith<$Res> {
  factory $CartDtoCopyWith(CartDto value, $Res Function(CartDto) then) =
      _$CartDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      int total,
      List<CartItemDto> items,
      String userId});
}

class _$CartDtoCopyWithImpl<$Res> implements $CartDtoCopyWith<$Res> {
  _$CartDtoCopyWithImpl(this._value, this._then);

  final CartDto _value;
  // ignore: unused_field
  final $Res Function(CartDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object total = freezed,
    Object items = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      total: total == freezed ? _value.total : total as int,
      items: items == freezed ? _value.items : items as List<CartItemDto>,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

abstract class _$CartDtoCopyWith<$Res> implements $CartDtoCopyWith<$Res> {
  factory _$CartDtoCopyWith(_CartDto value, $Res Function(_CartDto) then) =
      __$CartDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      int total,
      List<CartItemDto> items,
      String userId});
}

class __$CartDtoCopyWithImpl<$Res> extends _$CartDtoCopyWithImpl<$Res>
    implements _$CartDtoCopyWith<$Res> {
  __$CartDtoCopyWithImpl(_CartDto _value, $Res Function(_CartDto) _then)
      : super(_value, (v) => _then(v as _CartDto));

  @override
  _CartDto get _value => super._value as _CartDto;

  @override
  $Res call({
    Object id = freezed,
    Object total = freezed,
    Object items = freezed,
    Object userId = freezed,
  }) {
    return _then(_CartDto(
      id: id == freezed ? _value.id : id as String,
      total: total == freezed ? _value.total : total as int,
      items: items == freezed ? _value.items : items as List<CartItemDto>,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()
class _$_CartDto implements _CartDto {
  _$_CartDto(
      {@JsonKey(ignore: true) this.id, this.total, this.items, this.userId});

  factory _$_CartDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CartDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final int total;
  @override
  final List<CartItemDto> items;
  @override
  final String userId;

  @override
  String toString() {
    return 'CartDto(id: $id, total: $total, items: $items, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$CartDtoCopyWith<_CartDto> get copyWith =>
      __$CartDtoCopyWithImpl<_CartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CartDtoToJson(this);
  }
}

abstract class _CartDto implements CartDto {
  factory _CartDto(
      {@JsonKey(ignore: true) String id,
      int total,
      List<CartItemDto> items,
      String userId}) = _$_CartDto;

  factory _CartDto.fromJson(Map<String, dynamic> json) = _$_CartDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  int get total;
  @override
  List<CartItemDto> get items;
  @override
  String get userId;
  @override
  _$CartDtoCopyWith<_CartDto> get copyWith;
}
