import 'package:ashot/application/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfileEditForm extends HookWidget {
  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    final emailEditingController = useTextEditingController();
    final nameEditingController = useTextEditingController();
    final addressEditingController = useTextEditingController();
    final phoneEditingController = useTextEditingController();

    final FocusNode _emailFocus = FocusNode();
    final FocusNode _nameFocus = FocusNode();
    final FocusNode _addressFocus = FocusNode();
    final FocusNode _phoneFocus = FocusNode();

    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
        listener: (context, state) {
          emailEditingController.text = state.profile.emailAddress.getOrCrash();
          nameEditingController.text = state.profile.name.getOrCrash();
          addressEditingController.text = state.profile.address.getOrCrash();
          phoneEditingController.text = state.profile.phone.getOrCrash();
        },
        buildWhen: (p, c) => p.profile != c.profile,
        builder: (state, _) {
          return Form(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                TextFormField(
                  autocorrect: false,
                  controller: nameEditingController,
                  focusNode: _nameFocus,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Имя',
                  ),
                  onChanged: (name) => context
                      .bloc<ProfileFormBloc>()
                      .add(ProfileFormEvent.nameChanged(name)),
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _nameFocus, _emailFocus);
                  },
                  validator: (_) => context
                      .bloc<ProfileFormBloc>()
                      .state
                      .profile
                      .name
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (f) => 'Не может быть пустым',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autocorrect: false,
                  controller: emailEditingController,
                  focusNode: _emailFocus,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  onChanged: (email) => context
                      .bloc<ProfileFormBloc>()
                      .add(ProfileFormEvent.emailChanged(email)),
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _emailFocus, _addressFocus);
                  },
                  validator: (_) => context
                      .bloc<ProfileFormBloc>()
                      .state
                      .profile
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (f) => 'Не может быть пустым',
                          exceedingLength: (f) =>
                              'Exceeding length, max: ${f.max}',
                          orElse: () => null,
                          invalidEmail: (_) => 'Неверный формат',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autocorrect: false,
                  controller: addressEditingController,
                  focusNode: _addressFocus,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    labelText: 'Адрес',
                  ),
                  onChanged: (address) => context
                      .bloc<ProfileFormBloc>()
                      .add(ProfileFormEvent.addressChanged(address)),
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _addressFocus, _phoneFocus);
                  },
                  validator: (_) => context
                      .bloc<ProfileFormBloc>()
                      .state
                      .profile
                      .name
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (f) => 'Не может быть пустым',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autocorrect: false,
                  controller: phoneEditingController,
                  focusNode: _phoneFocus,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Номер телефона',
                  ),
                  onChanged: (phone) => context
                      .bloc<ProfileFormBloc>()
                      .add(ProfileFormEvent.phoneChanged(phone)),
                  validator: (_) => context
                      .bloc<ProfileFormBloc>()
                      .state
                      .profile
                      .address
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          empty: (f) => 'Не может быть пустым',
                          orElse: () => null,
                          invalidPhoneNumber: (_) => 'Неправильный номер',
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                FlatButton(
                  onPressed: () {
                    context
                        .bloc<ProfileFormBloc>()
                        .add(const ProfileFormEvent.saved());
                  },
                  child: const Text('Сохранить'),
                ),
              ],
            ),
          );
        });
  }
}
