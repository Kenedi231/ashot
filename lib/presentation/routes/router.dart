import 'package:ashot/presentation/pages/home/home_page.dart';
import 'package:ashot/presentation/pages/product_page/product_page.dart';
import 'package:auto_route/auto_route_annotations.dart';

import '../pages/home/home_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/profile_edit/profile_edit_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;

  @MaterialRoute(fullscreenDialog: true)
  HomePage homePage;

  ProductPage productPage;
  ProfilePage profilePage;
  ProfileEditPage profileEditPage;
}
