import 'dart:async';

import 'package:ashot/domain/core/value_objects.dart';
import 'package:ashot/domain/profile/i_profile_repository.dart';
import 'package:ashot/domain/profile/profile.dart';
import 'package:ashot/domain/profile/profile_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'profile_form_bloc.freezed.dart';
part 'profile_form_event.dart';
part 'profile_form_state.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileRepository _profileRepository;

  ProfileFormBloc(this._profileRepository);

  @override
  ProfileFormState get initialState => ProfileFormState.initial();

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield e.initProfile.fold(
          () => state,
          (profile) {
            return state.copyWith(
              profile: profile,
            );
          },
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(emailAddress: EmailAddress(e.email)),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(name: StringSingleLine(e.name)),
        );
      },
      addressChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(address: Address(e.address)),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(phone: Phone(e.phone)),
        );
      },
      saved: (e) async* {
        Either<ProfileFailure, Unit> failureOrSuccess;

        final isEmailValid = state.profile.emailAddress.isValid();
        final isNameValid = state.profile.name.isValid();
        final isPhoneValid = state.profile.phone.isValid();
        final isAddressValid = state.profile.address.isValid();

        final isFieldsValid =
            isEmailValid && isNameValid && isPhoneValid && isAddressValid;

        if (isFieldsValid) {
          yield state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          );

          if (state.profile.failureOption.isNone()) {
            failureOrSuccess = await _profileRepository.update(state.profile);
          }
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
