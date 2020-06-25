// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

class _$ReviewDTOTearOff {
  const _$ReviewDTOTearOff();

  _ReviewDTO call(
      {@JsonKey(ignore: true) String id,
      @required String comment,
      @required String product_id,
      double rate,
      ProfileDTO user}) {
    return _ReviewDTO(
      id: id,
      comment: comment,
      product_id: product_id,
      rate: rate,
      user: user,
    );
  }
}

// ignore: unused_element
const $ReviewDTO = _$ReviewDTOTearOff();

mixin _$ReviewDTO {
  @JsonKey(ignore: true)
  String get id;
  String get comment;
  String get product_id;
  double get rate;
  ProfileDTO get user;

  Map<String, dynamic> toJson();
  $ReviewDTOCopyWith<ReviewDTO> get copyWith;
}

abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String comment,
      String product_id,
      double rate,
      ProfileDTO user});

  $ProfileDTOCopyWith<$Res> get user;
}

class _$ReviewDTOCopyWithImpl<$Res> implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  final ReviewDTO _value;
  // ignore: unused_field
  final $Res Function(ReviewDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object product_id = freezed,
    Object rate = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      comment: comment == freezed ? _value.comment : comment as String,
      product_id:
          product_id == freezed ? _value.product_id : product_id as String,
      rate: rate == freezed ? _value.rate : rate as double,
      user: user == freezed ? _value.user : user as ProfileDTO,
    ));
  }

  @override
  $ProfileDTOCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $ProfileDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$ReviewDTOCopyWith(
          _ReviewDTO value, $Res Function(_ReviewDTO) then) =
      __$ReviewDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String comment,
      String product_id,
      double rate,
      ProfileDTO user});

  @override
  $ProfileDTOCopyWith<$Res> get user;
}

class __$ReviewDTOCopyWithImpl<$Res> extends _$ReviewDTOCopyWithImpl<$Res>
    implements _$ReviewDTOCopyWith<$Res> {
  __$ReviewDTOCopyWithImpl(_ReviewDTO _value, $Res Function(_ReviewDTO) _then)
      : super(_value, (v) => _then(v as _ReviewDTO));

  @override
  _ReviewDTO get _value => super._value as _ReviewDTO;

  @override
  $Res call({
    Object id = freezed,
    Object comment = freezed,
    Object product_id = freezed,
    Object rate = freezed,
    Object user = freezed,
  }) {
    return _then(_ReviewDTO(
      id: id == freezed ? _value.id : id as String,
      comment: comment == freezed ? _value.comment : comment as String,
      product_id:
          product_id == freezed ? _value.product_id : product_id as String,
      rate: rate == freezed ? _value.rate : rate as double,
      user: user == freezed ? _value.user : user as ProfileDTO,
    ));
  }
}

@JsonSerializable()
class _$_ReviewDTO implements _ReviewDTO {
  _$_ReviewDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.comment,
      @required this.product_id,
      this.rate,
      this.user})
      : assert(comment != null),
        assert(product_id != null);

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String comment;
  @override
  final String product_id;
  @override
  final double rate;
  @override
  final ProfileDTO user;

  @override
  String toString() {
    return 'ReviewDTO(id: $id, comment: $comment, product_id: $product_id, rate: $rate, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.product_id, product_id) ||
                const DeepCollectionEquality()
                    .equals(other.product_id, product_id)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(product_id) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith =>
      __$ReviewDTOCopyWithImpl<_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewDTOToJson(this);
  }
}

abstract class _ReviewDTO implements ReviewDTO {
  factory _ReviewDTO(
      {@JsonKey(ignore: true) String id,
      @required String comment,
      @required String product_id,
      double rate,
      ProfileDTO user}) = _$_ReviewDTO;

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get comment;
  @override
  String get product_id;
  @override
  double get rate;
  @override
  ProfileDTO get user;
  @override
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith;
}
