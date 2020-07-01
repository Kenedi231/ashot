import 'package:flutter/material.dart';

class ProfileHeaderBar extends StatelessWidget {
  final String _avatarURL, _name;
  final double _titlePadding, _height;

  const ProfileHeaderBar({
    Key key,
    String avatarURL,
    String name,
    double titlePadding,
    double height,
  })  : _avatarURL = avatarURL,
        _name = name,
        _titlePadding = titlePadding,
        _height = height,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: _titlePadding),
        background: Image.network(_avatarURL, fit: BoxFit.cover),
        centerTitle: false,
        title: Text(
          _name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: _titlePadding != 30 ? Colors.black : Colors.white,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Colors.black,
                offset: const Offset(2.0, 1.0),
              )
            ]
          ),
        ),
        collapseMode: CollapseMode.parallax,
      ),
      expandedHeight: _height,
    );
  }
}
