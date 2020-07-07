import 'package:dartz/dartz.dart';

abstract class IStripePaymentRepository {
  Future<Unit> stripePayment();
}