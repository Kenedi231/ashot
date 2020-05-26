part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.initial(Option<Profile> initProfile) = Initial;

  const factory ProfileFormEvent.emailChanged(String email) = EmailChanged;
  const factory ProfileFormEvent.nameChanged(String name) = NameChanged;
  const factory ProfileFormEvent.addressChanged(String address) =
      AddressChanged;
  const factory ProfileFormEvent.phoneChanged(String phone) = PhoneChanged;

  const factory ProfileFormEvent.saved() = Saved;
}
