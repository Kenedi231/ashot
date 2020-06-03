import 'package:ashot/application/profile/profile_watcher/profile_bloc.dart';
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
                  Router.navigator.pushNamedAndRemoveUntil(Router.signInPage, (_) => false),
                orElse: () {},
              );
            },
          ),
        ],
        child: BlocBuilder<ProfileBloc, ProfileState>(builder: (_, state) {
          return state.map(
            initial: (_) => Container(),
            loadFailure: (_) => Container(),
            loadInProgress: (_) => const CircularProgressIndicator(),
            loadSuccess: (store) => ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileHeader(
                    avatarURL: store.profile.avatar.getOrElse(''),
                    name: store.profile.name.getOrElse(''),
                    email: store.profile.emailAddress.getOrElse(''),
                    onEditPressed: () => Router.navigator.pushNamed(
                        Router.profileEditPage,
                        arguments:
                            ProfileEditPageArguments(profile: store.profile)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileInfo(
                    address: store.profile.address.getOrElse("Не указан"),
                    phoneNumber: store.profile.phone.getOrElse("Не указан"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    child: Text(
                      'Выход',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          );
        }));
  }
}
