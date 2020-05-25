import 'package:ashot/domain/profile/i_profile_repository.dart';
import 'package:ashot/domain/profile/profile.dart';
import 'package:ashot/domain/profile/profile_failure.dart';
import 'package:ashot/infrastructure/core/firestore_helpers.dart';
import 'package:ashot/infrastructure/profile/profile_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@RegisterAs(IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final Firestore _firestore;

  ProfileRepository(this._firestore);

  @override
  Stream<Either<ProfileFailure, Profile>> get() async* {
    final doc = await _firestore.userDocument();
    final snap = await doc.get();
    yield right(ProfileDTO.fromFirestore(snap).toDomain());
  }

  @override
  Stream<Either<ProfileFailure, Profile>> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
