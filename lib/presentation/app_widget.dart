import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../application/auth/auth_bloc.dart';
import '../injection.dart';
import 'routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        title: 'Ашот',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Router.onGenerateRoute,
        initialRoute: Router.splashPage,
        navigatorKey: Router.navigator.key,
      ),
    );
  }
}
