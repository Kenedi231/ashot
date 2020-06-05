import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String _email;
  final VoidCallback _onEditPressed;

  const ProfileHeader({
    Key key,
    String email,
    VoidCallback onEditPressed,
  })  : _email = email,
        _onEditPressed = onEditPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
