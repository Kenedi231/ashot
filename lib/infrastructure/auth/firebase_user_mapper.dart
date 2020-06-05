import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  Map<String, dynamic> fromDomain(User user) => {
        'id': user.id.getOrCrash(),
        'name': user.name.getOrCrash(),
        'email': user.emailAddress.getOrCrash(),
      };

  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromUniqueString(_.uid),
            name: StringSingleLine(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(_.email),
          );
  }
}
