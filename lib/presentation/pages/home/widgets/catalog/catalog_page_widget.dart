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
          backgroundColor: Colors.white,
          title: const Text(
            'Ашот',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              onPressed: () {
                Router.navigator.pushNamed(Router.profilePage);
              },
            ),
          ],
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: CatalogItemsWidget(),
      ),
    );
  }
}
