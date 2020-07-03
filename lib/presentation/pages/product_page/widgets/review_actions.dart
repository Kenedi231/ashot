import 'package:flutter/material.dart';

import '../../../../domain/review/review.dart';
import '../../../routes/router.gr.dart';

class ReviewActions extends StatelessWidget {
  final bool _existReview, _showButton;
  final Review _review;
  final Function _update;

  const ReviewActions({
    Key key,
    Review review,
    @required bool existReview,
    @required bool showButton,
    Function update,
  }) : _existReview = existReview,
       _showButton = showButton,
       _review = review,
       _update = update,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!_showButton) return Container();

    return InkWell(
      onTap: () {
        Router.navigator.pushNamed(
          Router.productNewReview,
          arguments: ProductNewReviewArguments(review: _review),
        ).then((value) {
          _update();
        });
      },
      child: Text(_existReview ? 'Написать отзыв' : 'Редактировать отзыв'),
    );
  }
}