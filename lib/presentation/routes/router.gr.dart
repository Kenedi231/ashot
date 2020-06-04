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

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const homePage = '/home-page';
  static const productPage = '/product-page';
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
              ProductPage(key: typedArgs.key, product: typedArgs.product),
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
