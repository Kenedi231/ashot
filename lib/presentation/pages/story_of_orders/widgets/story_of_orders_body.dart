import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/story_of_orders/story_of_orders_bloc.dart';
import 'story_of_orders_item.dart';

class StoryOfOrdersBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryOfOrdersBloc, StoryOfOrdersState>(
      builder: (BuildContext context, StoryOfOrdersState state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadFailure: (_) => Container(),
          loadSuccess: (state) {
            return ListView(
              children: state.orders.reversed.map(
                (order) => StoryOfOrdersItem(order: order),
              ).toList(),
            );
          },
        );
      }
    );
  }
}