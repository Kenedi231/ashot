// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ashot/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ashot/infrastructure/auth/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ashot/infrastructure/auth/firebase_auth_facade.dart';
import 'package:ashot/domain/auth/i_auth_facade.dart';
import 'package:ashot/infrastructure/cart/cart_repository.dart';
import 'package:ashot/domain/cart/i_cart_repository.dart';
import 'package:ashot/infrastructure/catalog/catalog_repository.dart';
import 'package:ashot/domain/catalog/i_catalog_repository.dart';
import 'package:ashot/infrastructure/profile/profile_repository.dart';
import 'package:ashot/domain/profile/i_profile_repository.dart';
import 'package:ashot/application/profile/profile_watcher/profile_bloc.dart';
import 'package:ashot/application/profile/profile_form/profile_form_bloc.dart';
import 'package:ashot/application/review/review_bloc.dart';
import 'package:ashot/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ashot/application/auth/auth_bloc.dart';
import 'package:ashot/application/catalog/cart/cart_bloc.dart';
import 'package:ashot/application/catalog/catalog_watcher/catalog_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<ProfileBloc>(() => ProfileBloc(g<IProfileRepository>()));
  g.registerFactory<ProfileFormBloc>(
      () => ProfileFormBloc(g<IProfileRepository>()));
  g.registerFactory<ReviewBloc>(() => ReviewBloc());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<CartBloc>(
      () => CartBloc(cartRepository: g<ICartRepository>()));
  g.registerFactory<CatalogWatcherBloc>(
      () => CatalogWatcherBloc(g<ICatalogRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
          g<Firestore>(),
        ));
    g.registerLazySingleton<ICartRepository>(() => CartRepository());
    g.registerLazySingleton<ICatalogRepository>(
        () => CatalogRepository(g<Firestore>()));
    g.registerLazySingleton<IProfileRepository>(
        () => ProfileRepository(g<Firestore>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
