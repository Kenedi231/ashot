import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/story_of_orders/story_of_orders_bloc.dart';
import '../../../injection.dart';
import '../../widgets/hero_text.dart';
import 'widgets/story_of_orders_body.dart';

class StoryOfOrdersPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget get wrappedRoute => MultiBlocProvider(
    providers: [
      BlocProvider<StoryOfOrdersBloc>(
        create: (context) => 
          getIt<StoryOfOrdersBloc>()
          ..add(const StoryOfOrdersEvent.watchAll()),
      )
    ],
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const HeroText(
          heroTag: 'story-of-orders',
          widget: Text(
            'История заказов',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: StoryOfOrdersBody(),
    );
  }
}