import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/review/review_bloc.dart';
import '../../../../domain/review/review.dart';
import '../../../routes/router.gr.dart';
import 'review_comment.dart';
import 'review_rate.dart';

class ReviewBody extends StatelessWidget {
  final Review _review;

  const ReviewBody({
    Key key,
    Review review,
  }) : _review = review,
       super(key: key);

  void _initPage(BuildContext context) {
    if (_review == null) return;

    context
      .bloc<ReviewBloc>()
      ..add(ReviewEvent.rateChanged(_review.rate.getOrElse(0.0)))
      ..add(ReviewEvent.commentChanged(_review.comment.getOrElse('')));
  }

  @override
  Widget build(BuildContext context) {
    final _existReview = _review != null;
    _initPage(context);

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
              comment: state.review.comment.getOrElse(''),
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
              },
              child: Text(_existReview ? 'Редактировать отзыв' : 'Оставить отзыв'),
            ),
            if (_existReview) Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  context
                    .bloc<ReviewBloc>()
                    .add(ReviewEvent.removeReview(_review));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text('Удалить отзыв'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ), listener: (BuildContext context, state) {
        if (state.isSubmitting) {
          Router.navigator.pop();
        }
      },
    );
  }
}