part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loadInProgress() = DataTransferInProgress;
  const factory ProfileState.loadSuccess(Profile profile) = LoadSuccess;
  const factory ProfileState.loadFailure(ProfileFailure profileFailure) =
      LoadFailure;
}
