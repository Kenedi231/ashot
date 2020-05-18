import 'package:ashot/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Пароль',
              ),
              autocorrect: false,
              obscureText: true,
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () =>
                        Router.navigator.pushReplacementNamed(Router.homePage),
                    child: const Text('Войти'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FlatButton(
                    onPressed: () => print('Регистрация'),
                    child: const Text('Регистрация'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
