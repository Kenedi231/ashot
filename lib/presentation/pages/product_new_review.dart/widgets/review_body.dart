import 'package:ashot/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/review/review_bloc.dart';
import 'review_comment.dart';
import 'review_rate.dart';

class ReviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewBloc, ReviewState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ReviewRate(
              rate: state.review.rate.getOrElse(0.0),
              onTap: (double value) {
                context
                  .bloc<ReviewBloc>()
                  .add(ReviewEvent.rateChanged(value));
              },
            ),
            ReviewComment(
              onChange: (String value) {
                context
                  .bloc<ReviewBloc>()
                  .add(ReviewEvent.commentChanged(value));
              },
            ),
            RaisedButton(
              color: Colors.orangeAccent,
              onPressed: () {
                context
                  .bloc<ReviewBloc>()
                  .add(const ReviewEvent.saved());

                Router.navigator.pop();
              },
              child: const Text('Оставить отзыв'),
            ),
          ],
        ),
      ), listener: (BuildContext context, state) {},
    );
  }
}