import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc.dart';
import '../../../../../application/catalog/catalog_watcher/catalog_watcher_bloc.dart';
import '../../../../routes/router.gr.dart';
import 'carousel_widget.dart';
import 'category_widget.dart';
import 'dish_card_widget.dart';

part 'catalog_items_widget.dart';

class CatalogPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                Router.navigator.pushReplacementNamed(Router.signInPage),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ашот'),
          leading: IconButton(
            icon: Icon(
              Icons.exit_to_app,
            ),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: CatalogItemsWidget(),
      ),
    );
  }
}