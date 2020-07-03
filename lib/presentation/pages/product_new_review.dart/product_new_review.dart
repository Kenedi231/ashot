import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/review/review_bloc.dart';
import '../../../domain/review/review.dart';
import '../../../injection.dart';
import 'widgets/review_body.dart';

class ProductNewReview extends StatelessWidget {
  final Review _review;

  const ProductNewReview({
    Key key,
    Review review,
  }) : _review = review,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ReviewBloc>(),
        child: SingleChildScrollView(child: ReviewBody(review: _review))
      ),
    );
  }
}