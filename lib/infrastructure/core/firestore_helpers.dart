import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on Firestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<User> authentificatedUser() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    return userOption.getOrElse(() => throw NotAuthenticatedError());
  }

  Future<DocumentReference> userDocument() async {
    final User user = await authentificatedUser();
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }

  Future<CollectionReference> products() async {
    return Firestore.instance.collection('products');
  }

  Future<CollectionReference> reviews() async {
    return Firestore.instance.collection('reviews');
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get productsCollection => collection('products');
}
