// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

  Initial initial(Option<Profile> initProfile) {
    return Initial(
      initProfile,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

  PhoneChanged phoneChanged(String phone) {
    return PhoneChanged(
      phone,
    );
  }

  Saved saved() {
    return const Saved();
  }
}

// ignore: unused_element
const $ProfileFormEvent = _$ProfileFormEventTearOff();

mixin _$ProfileFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  });
}

abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  $Res call({Option<Profile> initProfile});
}

class _$InitialCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object initProfile = freezed,
  }) {
    return _then(Initial(
      initProfile == freezed
          ? _value.initProfile
          : initProfile as Option<Profile>,
    ));
  }
}

class _$Initial implements Initial {
  const _$Initial(this.initProfile) : assert(initProfile != null);

  @override
  final Option<Profile> initProfile;

  @override
  String toString() {
    return 'ProfileFormEvent.initial(initProfile: $initProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.initProfile, initProfile) ||
                const DeepCollectionEquality()
                    .equals(other.initProfile, initProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initProfile);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return initial(initProfile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(initProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileFormEvent {
  const factory Initial(Option<Profile> initProfile) = _$Initial;

  Option<Profile> get initProfile;
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ProfileFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ProfileFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $AddressChangedCopyWith<$Res> {
  factory $AddressChangedCopyWith(
          AddressChanged value, $Res Function(AddressChanged) then) =
      _$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

class _$AddressChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $AddressChangedCopyWith<$Res> {
  _$AddressChangedCopyWithImpl(
      AddressChanged _value, $Res Function(AddressChanged) _then)
      : super(_value, (v) => _then(v as AddressChanged));

  @override
  AddressChanged get _value => super._value as AddressChanged;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(AddressChanged(
      address == freezed ? _value.address : address as String,
    ));
  }
}

class _$AddressChanged implements AddressChanged {
  const _$AddressChanged(this.address) : assert(address != null);

  @override
  final String address;

  @override
  String toString() {
    return 'ProfileFormEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @override
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      _$AddressChangedCopyWithImpl<AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements ProfileFormEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address;
  $AddressChangedCopyWith<AddressChanged> get copyWith;
}

abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

class _$PhoneChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'ProfileFormEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements ProfileFormEvent {
  const factory PhoneChanged(String phone) = _$PhoneChanged;

  String get phone;
  $PhoneChangedCopyWith<PhoneChanged> get copyWith;
}

abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

class _$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ProfileFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Option<Profile> initProfile),
    @required Result emailChanged(String email),
    @required Result nameChanged(String name),
    @required Result addressChanged(String address),
    @required Result phoneChanged(String phone),
    @required Result saved(),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Option<Profile> initProfile),
    Result emailChanged(String email),
    Result nameChanged(String name),
    Result addressChanged(String address),
    Result phoneChanged(String phone),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result emailChanged(EmailChanged value),
    @required Result nameChanged(NameChanged value),
    @required Result addressChanged(AddressChanged value),
    @required Result phoneChanged(PhoneChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initial != null);
    assert(emailChanged != null);
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result emailChanged(EmailChanged value),
    Result nameChanged(NameChanged value),
    Result addressChanged(AddressChanged value),
    Result phoneChanged(PhoneChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ProfileFormEvent {
  const factory Saved() = _$Saved;
}

class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

  _ProfileFormState call(
      {@required
          Profile profile,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProfileFormState(
      profile: profile,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ProfileFormState = _$ProfileFormStateTearOff();

mixin _$ProfileFormState {
  Profile get profile;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;

  $ProfileFormStateCopyWith<ProfileFormState> get copyWith;
}

abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {Profile profile,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  $ProfileCopyWith<$Res> get profile;
}

class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object profile = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed ? _value.profile : profile as Profile,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Profile profile,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProfileCopyWith<$Res> get profile;
}

class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object profile = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileFormState(
      profile: profile == freezed ? _value.profile : profile as Profile,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {@required this.profile,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.saveFailureOrSuccessOption})
      : assert(profile != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Profile profile;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileFormState(profile: $profile, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {@required
          Profile profile,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ProfileFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ProfileFormState;

  @override
  Profile get profile;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith;
}
