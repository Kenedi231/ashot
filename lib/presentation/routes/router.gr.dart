// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ashot/presentation/pages/splash/splash_page.dart';
import 'package:ashot/presentation/pages/sign_in/sign_in_page.dart';
import 'package:ashot/presentation/pages/home/home_page.dart';
import 'package:ashot/presentation/pages/product_page/product_page.dart';
import 'package:ashot/domain/catalog/product.dart';
import 'package:ashot/presentation/pages/product_new_review.dart/product_new_review.dart';
import 'package:ashot/domain/review/review.dart';
import 'package:ashot/presentation/pages/profile/profile_page.dart';
import 'package:ashot/presentation/pages/profile_edit/profile_edit_page.dart';
import 'package:ashot/domain/profile/profile.dart';

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const homePage = '/home-page';
  static const productPage = '/product-page';
  static const productNewReview = '/product-new-review';
  static const profilePage = '/profile-page';
  static const profileEditPage = '/profile-edit-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
          settings: settings,
        );
      case Router.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomePage().wrappedRoute,
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.productPage:
        if (hasInvalidArgs<ProductPageArguments>(args)) {
          return misTypedArgsRoute<ProductPageArguments>(args);
        }
        final typedArgs =
            args as ProductPageArguments ?? ProductPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              ProductPage(key: typedArgs.key, product: typedArgs.product)
                  .wrappedRoute,
          settings: settings,
        );
      case Router.productNewReview:
        if (hasInvalidArgs<ProductNewReviewArguments>(args)) {
          return misTypedArgsRoute<ProductNewReviewArguments>(args);
        }
        final typedArgs =
            args as ProductNewReviewArguments ?? ProductNewReviewArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              ProductNewReview(key: typedArgs.key, review: typedArgs.review),
          settings: settings,
        );
      case Router.profilePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ProfilePage().wrappedRoute,
          settings: settings,
        );
      case Router.profileEditPage:
        if (hasInvalidArgs<ProfileEditPageArguments>(args)) {
          return misTypedArgsRoute<ProfileEditPageArguments>(args);
        }
        final typedArgs =
            args as ProfileEditPageArguments ?? ProfileEditPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              ProfileEditPage(key: typedArgs.key, profile: typedArgs.profile)
                  .wrappedRoute,
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ProductPage arguments holder class
class ProductPageArguments {
  final Key key;
  final Product product;
  ProductPageArguments({this.key, this.product});
}

//ProductNewReview arguments holder class
class ProductNewReviewArguments {
  final Key key;
  final Review review;
  ProductNewReviewArguments({this.key, this.review});
}

//ProfileEditPage arguments holder class
class ProfileEditPageArguments {
  final Key key;
  final Profile profile;
  ProfileEditPageArguments({this.key, this.profile});
}
