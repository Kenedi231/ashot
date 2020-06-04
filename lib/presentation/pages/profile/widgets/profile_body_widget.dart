import 'package:ashot/application/profile/profile_watcher/profile_bloc.dart';
import 'package:ashot/presentation/pages/profile/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../routes/router.gr.dart';
import 'profile_header_widget.dart';
import 'profile_header_widget_bar.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  ScrollController _scrollController;
  double kExpandedHeight = 250;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() => setState(() {}));
    super.initState();
  }

  double get _horizontalTitlePadding {
    const kBasePadding = 30.0;
    const kMultiplier = 0.5;

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (kExpandedHeight / 2)) {
        return kBasePadding;
      }

      if (_scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      return (_scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
          kBasePadding;
    }

    return kBasePadding;
  }


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
            loadSuccess: (store) => 
            CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                ProfileHeaderBar(
                  avatarURL: store.profile.avatar.getOrElse(''),
                  name: store.profile.name.getOrElse(''),
                  titlePadding: _horizontalTitlePadding,
                  height: kExpandedHeight,
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProfileHeader(
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
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                          child: Text(
                            'Выход',
                            style:
                                TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ]
            ),
          );
        }));
  }
}
