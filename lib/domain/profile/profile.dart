import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile implements IEntity {
  const factory Profile({
    UniqueId id,
    StringSingleLine name,
    EmailAddress emailAddress,
    Address address,
    Phone phone,
    URL avatar,
  }) = _Profile;

  factory Profile.empty() => const Profile();
}

extension ProfileX on Profile {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
