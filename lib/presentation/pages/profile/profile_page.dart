import 'package:ashot/presentation/pages/profile/widgets/profile_body_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: ProfileBody(),
    );
  }
}
