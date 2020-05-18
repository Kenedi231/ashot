import 'package:flutter/material.dart';

import '../routes/router.gr.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ашот',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.onGenerateRoute,
      initialRoute: Router.splashPage,
      navigatorKey: Router.navigator.key,
    );
  }
}
