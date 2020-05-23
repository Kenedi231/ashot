import 'package:ashot/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (_, state) {
      return state.map(
          initial: (_) => Container(),
          unauthenticated: (_) => Container(),
          authenticated: (auth) => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1567186937675-a5131c8a89ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=360&q=80',
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(
                            auth.user.name.getOrElse(''),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ]),
                        const SizedBox(height: 8.0),
                        Row(children: <Widget>[
                          Text(
                            auth.user.emailAddress.getOrElse(''),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  )
                ],
              ));
    });
  }
}
