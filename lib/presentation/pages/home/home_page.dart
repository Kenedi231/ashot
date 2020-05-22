import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/catalog/catalog_watcher/catalog_watcher_bloc.dart';
import '../../../injection.dart';
import '../../../presentation/routes/router.gr.dart';
import 'widgets/home_body_widget.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => MultiBlocProvider(
        providers: [
          BlocProvider<CatalogWatcherBloc>(
            create: (context) => getIt<CatalogWatcherBloc>()
              ..add(const CatalogWatcherEvent.watchAll()),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Ашот'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: () {
              Router.navigator.pushNamed(Router.profilePage);
            },
          ),
        ],
      ),
      body: HomeBody(),
    );
  }
}
