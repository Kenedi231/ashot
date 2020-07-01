import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/review_watcher/review_watcher_bloc.dart';
import '../../../routes/router.gr.dart';
import 'comment_block.dart';

class ProductReviewers extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewWatcherBloc, ReviewWatcherState>(
      builder: (BuildContext context, ReviewWatcherState state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadFailure: (_) => Container(),
          loadSuccess: (state) {
            final dateFormat = DateFormat('dd MMMM yyyy', 'ru');

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Обзоры',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (state.possibleComment) InkWell(
                        onTap: () {
                          Router.navigator.pushNamed(Router.productNewReview);
                        },
                        child: const Text('Написать отзыв'),
                      ) else const SizedBox(),
                    ],
                  ),
                  if (state.reviews.isEmpty) const Text('На этот товар нет обзоров. Станьте первыми!')
                  else Column(
                    children: state.reviews.map((review) => CommentBlock(
                      imageURL: review.user.avatar.getOrElse(''),
                      name: review.user.name.getOrElse(''),
                      comment: review.comment.getOrElse(''),
                      date: ' ${dateFormat.format(review.date.toDate())}',
                      rate: review.rate.getOrElse(0.0),
                    )
                    ).toList(),
                  ),
                ],
              ),
            );
          });
      }
    );
  }
}