import 'package:dartz/dartz.dart';

import 'profile.dart';
import 'profile_failure.dart';

abstract class IProfileRepository {
  Stream<Either<ProfileFailure, Profile>> get();
  Stream<Either<ProfileFailure, Profile>> update(Profile updatedProfile);
}
