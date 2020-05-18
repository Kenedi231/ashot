import '../../routes/router.gr.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: Check user and redirect to login or home
    Router.navigator.pushReplacementNamed(Router.signInPage);

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
