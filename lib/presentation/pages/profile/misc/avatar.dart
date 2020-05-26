import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String _imageURL;
  const Avatar({Key key, String imageURL})
      : _imageURL = imageURL,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        _imageURL,
        fit: BoxFit.cover,
        height: 120,
        width: 120,
      ),
    );
  }
}
