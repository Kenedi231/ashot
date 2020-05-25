import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/profile/profile_bloc.dart';

class Tile extends StatelessWidget {
  final String _title, _subtitle;

  const Tile({
    Key key,
    String title,
    String subtitle,
  })  : _title = title,
        _subtitle = subtitle,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _title,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _subtitle,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(_) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProfileBloc, ProfileState>(builder: (_, state) {
        return state.map(
          initial: (_) => Container(),
          loadFailure: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadSuccess: (event) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Tile(
                title: "Адрес",
                subtitle: event.profile.adress.getOrElse("Не указан"),
              ),
              const SizedBox(height: 8),
              Tile(
                title: "Номер телефона",
                subtitle: event.profile.phone.getOrElse("Не указан"),
              ),
            ],
          ),
        );
      }),
    );
  }
}
