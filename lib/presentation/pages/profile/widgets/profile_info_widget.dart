import 'package:flutter/material.dart';

import '../../../widgets/tile.dart';

class ProfileInfo extends StatelessWidget {
  final String _address, _phoneNumber;

  const ProfileInfo({
    Key key,
    String address,
    String phoneNumber,
  })  : _address = address,
        _phoneNumber = phoneNumber,
        super(key: key);

  @override
  Widget build(_) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Tile(
          title: "Адрес",
          subtitle: _address,
        ),
        const SizedBox(height: 8),
        Tile(
          title: "Номер телефона",
          subtitle: _phoneNumber,
        ),
      ],
    );
  }
}
