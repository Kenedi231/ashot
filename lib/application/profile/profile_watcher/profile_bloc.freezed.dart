// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _Get get() {
    return const _Get();
  }

  _ProfileReceived profileReceived(
      Either<ProfileFailure, Profile> failureOrProfile) {
    return _ProfileReceived(
      failureOrProfile,
    );
  }
}

// ignore: unused_element
const $ProfileEvent = _$ProfileEventTearOff();

mixin _$ProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Profile> failureOrProfile),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(),
    Result profileReceived(Either<ProfileFailure, Profile> failureOrProfile),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_Get value),
    @required Result profileReceived(_ProfileReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_Get value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  });
}

abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

abstract class _$GetCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) then) =
      __$GetCopyWithImpl<$Res>;
}

class __$GetCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(_Get _value, $Res Function(_Get) _then)
      : super(_value, (v) => _then(v as _Get));

  @override
  _Get get _value => super._value as _Get;
}

class _$_Get implements _Get {
  const _$_Get();

  @override
  String toString() {
    return 'ProfileEvent.get()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Get);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Profile> failureOrProfile),
  }) {
    assert(get != null);
    assert(profileReceived != null);
    return get();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(),
    Result profileReceived(Either<ProfileFailure, Profile> failureOrProfile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_Get value),
    @required Result profileReceived(_ProfileReceived value),
  }) {
    assert(get != null);
    assert(profileReceived != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_Get value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements ProfileEvent {
  const factory _Get() = _$_Get;
}

abstract class _$ProfileReceivedCopyWith<$Res> {
  factory _$ProfileReceivedCopyWith(
          _ProfileReceived value, $Res Function(_ProfileReceived) then) =
      __$ProfileReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProfileFailure, Profile> failureOrProfile});
}

class __$ProfileReceivedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ProfileReceivedCopyWith<$Res> {
  __$ProfileReceivedCopyWithImpl(
      _ProfileReceived _value, $Res Function(_ProfileReceived) _then)
      : super(_value, (v) => _then(v as _ProfileReceived));

  @override
  _ProfileReceived get _value => super._value as _ProfileReceived;

  @override
  $Res call({
    Object failureOrProfile = freezed,
  }) {
    return _then(_ProfileReceived(
      failureOrProfile == freezed
          ? _value.failureOrProfile
          : failureOrProfile as Either<ProfileFailure, Profile>,
    ));
  }
}

class _$_ProfileReceived implements _ProfileReceived {
  const _$_ProfileReceived(this.failureOrProfile)
      : assert(failureOrProfile != null);

  @override
  final Either<ProfileFailure, Profile> failureOrProfile;

  @override
  String toString() {
    return 'ProfileEvent.profileReceived(failureOrProfile: $failureOrProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileReceived &&
            (identical(other.failureOrProfile, failureOrProfile) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProfile, failureOrProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProfile);

  @override
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith =>
      __$ProfileReceivedCopyWithImpl<_ProfileReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(),
    @required
        Result profileReceived(
            Either<ProfileFailure, Profile> failureOrProfile),
  }) {
    assert(get != null);
    assert(profileReceived != null);
    return profileReceived(failureOrProfile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(),
    Result profileReceived(Either<ProfileFailure, Profile> failureOrProfile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(failureOrProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_Get value),
    @required Result profileReceived(_ProfileReceived value),
  }) {
    assert(get != null);
    assert(profileReceived != null);
    return profileReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_Get value),
    Result profileReceived(_ProfileReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileReceived != null) {
      return profileReceived(this);
    }
    return orElse();
  }
}

abstract class _ProfileReceived implements ProfileEvent {
  const factory _ProfileReceived(
      Either<ProfileFailure, Profile> failureOrProfile) = _$_ProfileReceived;

  Either<ProfileFailure, Profile> get failureOrProfile;
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith;
}

class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(Profile profile) {
    return LoadSuccess(
      profile,
    );
  }

  LoadFailure loadFailure(ProfileFailure profileFailure) {
    return LoadFailure(
      profileFailure,
    );
  }
}

// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

mixin _$ProfileState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Profile profile),
    @required Result loadFailure(ProfileFailure profileFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Profile profile),
    Result loadFailure(ProfileFailure profileFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Profile profile),
    @required Result loadFailure(ProfileFailure profileFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Profile profile),
    Result loadFailure(ProfileFailure profileFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProfileState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'ProfileState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Profile profile),
    @required Result loadFailure(ProfileFailure profileFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Profile profile),
    Result loadFailure(ProfileFailure profileFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements ProfileState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object profile = freezed,
  }) {
    return _then(LoadSuccess(
      profile == freezed ? _value.profile : profile as Profile,
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

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.profile) : assert(profile != null);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.loadSuccess(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Profile profile),
    @required Result loadFailure(ProfileFailure profileFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(profile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Profile profile),
    Result loadFailure(ProfileFailure profileFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ProfileState {
  const factory LoadSuccess(Profile profile) = _$LoadSuccess;

  Profile get profile;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProfileFailure profileFailure});

  $ProfileFailureCopyWith<$Res> get profileFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object profileFailure = freezed,
  }) {
    return _then(LoadFailure(
      profileFailure == freezed
          ? _value.profileFailure
          : profileFailure as ProfileFailure,
    ));
  }

  @override
  $ProfileFailureCopyWith<$Res> get profileFailure {
    if (_value.profileFailure == null) {
      return null;
    }
    return $ProfileFailureCopyWith<$Res>(_value.profileFailure, (value) {
      return _then(_value.copyWith(profileFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.profileFailure) : assert(profileFailure != null);

  @override
  final ProfileFailure profileFailure;

  @override
  String toString() {
    return 'ProfileState.loadFailure(profileFailure: $profileFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.profileFailure, profileFailure) ||
                const DeepCollectionEquality()
                    .equals(other.profileFailure, profileFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Profile profile),
    @required Result loadFailure(ProfileFailure profileFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(profileFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Profile profile),
    Result loadFailure(ProfileFailure profileFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(profileFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ProfileState {
  const factory LoadFailure(ProfileFailure profileFailure) = _$LoadFailure;

  ProfileFailure get profileFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
