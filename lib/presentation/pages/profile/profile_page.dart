import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_watcher/profile_bloc.dart';
import '../../../injection.dart';
import 'widgets/profile_body_widget.dart';

class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => MultiBlocProvider(
        providers: [
          BlocProvider<ProfileBloc>(
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.get()),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
