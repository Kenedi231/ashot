// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileDTO _$ProfileDTOFromJson(Map<String, dynamic> json) {
  return _ProfileDTO.fromJson(json);
}

class _$ProfileDTOTearOff {
  const _$ProfileDTOTearOff();

  _ProfileDTO call(
      {@JsonKey(ignore: false) String id,
      @required String name,
      @required String email,
      String address,
      String phone,
      String avatar}) {
    return _ProfileDTO(
      id: id,
      name: name,
      email: email,
      address: address,
      phone: phone,
      avatar: avatar,
    );
  }
}

// ignore: unused_element
const $ProfileDTO = _$ProfileDTOTearOff();

mixin _$ProfileDTO {
  @JsonKey(ignore: false)
  String get id;
  String get name;
  String get email;
  String get address;
  String get phone;
  String get avatar;

  Map<String, dynamic> toJson();
  $ProfileDTOCopyWith<ProfileDTO> get copyWith;
}

abstract class $ProfileDTOCopyWith<$Res> {
  factory $ProfileDTOCopyWith(
          ProfileDTO value, $Res Function(ProfileDTO) then) =
      _$ProfileDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: false) String id,
      String name,
      String email,
      String address,
      String phone,
      String avatar});
}

class _$ProfileDTOCopyWithImpl<$Res> implements $ProfileDTOCopyWith<$Res> {
  _$ProfileDTOCopyWithImpl(this._value, this._then);

  final ProfileDTO _value;
  // ignore: unused_field
  final $Res Function(ProfileDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      address: address == freezed ? _value.address : address as String,
      phone: phone == freezed ? _value.phone : phone as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

abstract class _$ProfileDTOCopyWith<$Res> implements $ProfileDTOCopyWith<$Res> {
  factory _$ProfileDTOCopyWith(
          _ProfileDTO value, $Res Function(_ProfileDTO) then) =
      __$ProfileDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: false) String id,
      String name,
      String email,
      String address,
      String phone,
      String avatar});
}

class __$ProfileDTOCopyWithImpl<$Res> extends _$ProfileDTOCopyWithImpl<$Res>
    implements _$ProfileDTOCopyWith<$Res> {
  __$ProfileDTOCopyWithImpl(
      _ProfileDTO _value, $Res Function(_ProfileDTO) _then)
      : super(_value, (v) => _then(v as _ProfileDTO));

  @override
  _ProfileDTO get _value => super._value as _ProfileDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object avatar = freezed,
  }) {
    return _then(_ProfileDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      address: address == freezed ? _value.address : address as String,
      phone: phone == freezed ? _value.phone : phone as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

@JsonSerializable()
class _$_ProfileDTO implements _ProfileDTO {
  _$_ProfileDTO(
      {@JsonKey(ignore: false) this.id,
      @required this.name,
      @required this.email,
      this.address,
      this.phone,
      this.avatar})
      : assert(name != null),
        assert(email != null);

  factory _$_ProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String avatar;

  @override
  String toString() {
    return 'ProfileDTO(id: $id, name: $name, email: $email, address: $address, phone: $phone, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(avatar);

  @override
  _$ProfileDTOCopyWith<_ProfileDTO> get copyWith =>
      __$ProfileDTOCopyWithImpl<_ProfileDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDTOToJson(this);
  }
}

abstract class _ProfileDTO implements ProfileDTO {
  factory _ProfileDTO(
      {@JsonKey(ignore: false) String id,
      @required String name,
      @required String email,
      String address,
      String phone,
      String avatar}) = _$_ProfileDTO;

  factory _ProfileDTO.fromJson(Map<String, dynamic> json) =
      _$_ProfileDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get address;
  @override
  String get phone;
  @override
  String get avatar;
  @override
  _$ProfileDTOCopyWith<_ProfileDTO> get copyWith;
}
