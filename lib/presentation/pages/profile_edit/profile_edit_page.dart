import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_form/profile_form_bloc.dart';
import '../../../domain/profile/profile.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/profile_edit_form.dart';

class ProfileEditPage extends StatelessWidget implements AutoRouteWrapper {
  final Profile _profile;

  const ProfileEditPage({
    Key key,
    Profile profile,
  })  : _profile = profile,
        super(key: key);

  @override
  Widget get wrappedRoute => BlocProvider<ProfileFormBloc>(
        create: (context) => getIt<ProfileFormBloc>()
          ..add(ProfileFormEvent.initial(optionOf(_profile))),
        child: BlocConsumer<ProfileFormBloc, ProfileFormState>(
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      duration: const Duration(seconds: 5),
                      message: failure.map(
                          emptyProfile: (_) =>
                              'Не все обязательные поля заполненны',
                          insufficientPermissions: (_) => 'Доступ запрещен ❌',
                          unableToUpdate: (_) => "Неполучается обновить",
                          unexpected: (_) => 'Непредвиденная ошибка'),
                    ).show(context);
                  },
                  (_) {
                    // Can't be just a simple pop. If another route (like a Flushbar) is on top of stack, we'll need to pop even that to get to
                    // the overview page.
                    Router.navigator.popUntil(
                        (route) => route.settings.name == Router.profilePage);
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return this;
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: ProfileEditForm(),
    );
  }
}
