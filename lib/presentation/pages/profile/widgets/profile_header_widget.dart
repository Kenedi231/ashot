import 'package:flutter/material.dart';

import '../misc/avatar.dart';

class ProfileHeader extends StatelessWidget {
  final String _avatarURL, _name, _email;
  final VoidCallback _onEditPressed;

  const ProfileHeader({
    Key key,
    String avatarURL,
    String name,
    String email,
    VoidCallback onEditPressed,
  })  : _avatarURL = avatarURL,
        _name = name,
        _email = email,
        _onEditPressed = onEditPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Avatar(imageURL: _avatarURL),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  _email,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.edit,
          ),
          onPressed: _onEditPressed,
        ),
      ],
    );
  }
}
