import 'package:ashot/application/auth/auth_bloc.dart';
import 'package:ashot/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_widget.dart';

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
        body: CatalogItemsWidget(),
      ),
    );
  }
}