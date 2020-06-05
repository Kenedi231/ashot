part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.get() = _Get;

  const factory ProfileEvent.profileReceived(
      Either<ProfileFailure, Profile> failureOrProfile) = _ProfileReceived;
}
