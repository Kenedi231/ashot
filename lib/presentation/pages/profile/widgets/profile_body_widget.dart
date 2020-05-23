import 'package:ashot/presentation/pages/profile/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../routes/router.gr.dart';
import 'profile_header_widget.dart';

class ProfileBody extends StatelessWidget {
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
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileHeader(),
          ),
          ProfileInfo(),
          InkWell(
            onTap: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
              child: Text(
                'Выход',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
