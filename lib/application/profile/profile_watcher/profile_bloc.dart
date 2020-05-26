import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/profile/i_profile_repository.dart';
import '../../../domain/profile/profile.dart';
import '../../../domain/profile/profile_failure.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;

  ProfileBloc(this._profileRepository);

  StreamSubscription<Either<ProfileFailure, Profile>> _profileSubscription;

  @override
  ProfileState get initialState => const ProfileState.initial();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      get: (e) async* {
        yield const ProfileState.loadInProgress();
        await _profileSubscription?.cancel();
        _profileSubscription = _profileRepository
            .get()
            .listen((profile) => add(ProfileEvent.profileReceived(profile)));
      },
      profileReceived: (e) async* {
        yield e.failureOrProfile.fold(
          (f) => ProfileState.loadFailure(f),
          (profile) => ProfileState.loadSuccess(profile),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _profileSubscription.cancel();
    return super.close();
  }
}
