import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/profile/i_profile_repository.dart';
import '../../domain/profile/profile.dart';
import '../../domain/profile/profile_failure.dart';
import '../core/firestore_helpers.dart';
import 'profile_dto.dart';

@prod
@lazySingleton
@RegisterAs(IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final Firestore _firestore;

  ProfileRepository(this._firestore);

  @override
  Stream<Either<ProfileFailure, Profile>> get() async* {
    try {
      final doc = await _firestore.userDocument();

      yield* doc
          .snapshots()
          .map((snap) => right(ProfileDTO.fromFirestore(snap).toDomain()));
    } on PlatformException catch (e) {
      yield left(const ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> update(Profile updatedProfile) async {
    try {
      final authentificatedUser = await _firestore.authentificatedUser();
      await _firestore
          .collection('users')
          .document(authentificatedUser.id.getOrCrash())
          .setData(ProfileDTO.fromDomain(updatedProfile).toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ProfileFailure.unableToUpdate());
      } else {
        return left(const ProfileFailure.unexpected());
      }
    }
  }
}
