import 'package:ashot/application/review/review_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import 'widgets/review_body.dart';

class ProductNewReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ReviewBloc>(),
        child: ReviewBody()
      ),
    );
  }
}