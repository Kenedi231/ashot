// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress,
      Adress adress,
      Phone phone}) {
    return _User(
      id: id,
      name: name,
      emailAddress: emailAddress,
      adress: adress,
      phone: phone,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  StringSingleLine get name;
  EmailAddress get emailAddress;
  Adress get adress;
  Phone get phone;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Adress adress,
      Phone phone});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object adress = freezed,
    Object phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      adress: adress == freezed ? _value.adress : adress as Adress,
      phone: phone == freezed ? _value.phone : phone as Phone,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      Adress adress,
      Phone phone});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object adress = freezed,
    Object phone = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      adress: adress == freezed ? _value.adress : adress as Adress,
      phone: phone == freezed ? _value.phone : phone as Phone,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.emailAddress,
      this.adress,
      this.phone})
      : assert(id != null),
        assert(name != null),
        assert(emailAddress != null);

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress emailAddress;
  @override
  final Adress adress;
  @override
  final Phone phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, emailAddress: $emailAddress, adress: $adress, phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('adress', adress))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.adress, adress) ||
                const DeepCollectionEquality().equals(other.adress, adress)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(adress) ^
      const DeepCollectionEquality().hash(phone);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress,
      Adress adress,
      Phone phone}) = _$_User;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get emailAddress;
  @override
  Adress get adress;
  @override
  Phone get phone;
  @override
  _$UserCopyWith<_User> get copyWith;
}
