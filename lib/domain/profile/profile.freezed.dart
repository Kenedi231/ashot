// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Address address,
      Phone phone,
      URL avatar}) {
    return _Profile(
      id: id,
      name: name,
      emailAddress: emailAddress,
      address: address,
      phone: phone,
      avatar: avatar,
    );
  }
}

// ignore: unused_element
const $Profile = _$ProfileTearOff();

mixin _$Profile {
  UniqueId get id;
  StringSingleLine get name;
  EmailAddress get emailAddress;
  Address get address;
  Phone get phone;
  URL get avatar;

  $ProfileCopyWith<Profile> get copyWith;
}

abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Address address,
      Phone phone,
      URL avatar});
}

class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      address: address == freezed ? _value.address : address as Address,
      phone: phone == freezed ? _value.phone : phone as Phone,
      avatar: avatar == freezed ? _value.avatar : avatar as URL,
    ));
  }
}

abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Address address,
      Phone phone,
      URL avatar});
}

class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object address = freezed,
    Object phone = freezed,
    Object avatar = freezed,
  }) {
    return _then(_Profile(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      address: address == freezed ? _value.address : address as Address,
      phone: phone == freezed ? _value.phone : phone as Phone,
      avatar: avatar == freezed ? _value.avatar : avatar as URL,
    ));
  }
}

class _$_Profile with DiagnosticableTreeMixin implements _Profile {
  const _$_Profile(
      {this.id,
      this.name,
      this.emailAddress,
      this.address,
      this.phone,
      this.avatar});

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress emailAddress;
  @override
  final Address address;
  @override
  final Phone phone;
  @override
  final URL avatar;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profile(id: $id, name: $name, emailAddress: $emailAddress, address: $address, phone: $phone, avatar: $avatar)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profile'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('avatar', avatar));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
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
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(avatar);

  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Address address,
      Phone phone,
      URL avatar}) = _$_Profile;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get emailAddress;
  @override
  Address get address;
  @override
  Phone get phone;
  @override
  URL get avatar;
  @override
  _$ProfileCopyWith<_Profile> get copyWith;
}
