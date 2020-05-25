import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../core/entity.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile implements IEntity {
  const factory Profile({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
    Adress adress,
    Phone phone,
    URL avatar,
  }) = _Profile;
}

extension ProfileX on Profile {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
