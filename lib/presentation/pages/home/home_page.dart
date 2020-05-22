import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../application/catalog/cart/cart_bloc.dart';
import '../../../application/catalog/catalog_watcher/catalog_watcher_bloc.dart';
import '../../../injection.dart';
import '../../shared/common_styles.dart';
import 'widgets/cart_widget.dart';
import 'widgets/catalog_page_widget.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => MultiBlocProvider(
    providers: [
      BlocProvider<CatalogWatcherBloc>(
        create: (context) => getIt<CatalogWatcherBloc>()
          ..add(const CatalogWatcherEvent.watchAll()),
      ),
      BlocProvider<CartBloc>(
        create: (context) => getIt<CartBloc>()
          ..add(const CartEvent.cartReceived())
      )
    ],
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: SlidingUpPanel(
          minHeight: 50,
          backdropEnabled: true,
          borderRadius: CommonStyles.slidePanelRadius,
          body: CatalogPageWidget(),
          panel: CartWidget(),
        ),
      ),
    );
  }
}
