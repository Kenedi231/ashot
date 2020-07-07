import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:stripe_payment/stripe_payment.dart';

import '../../domain/stripe_payment/i_stripe_payment_repository.dart';

@prod
@lazySingleton
@RegisterAs(IStripePaymentRepository)
class StripePaymentRepository implements IStripePaymentRepository {
  Token _paymentToken;
  PaymentMethod _paymentMethod;
  String _error;
  final String _currentSecret = 'sk_test_51H2CzIFLTh40WGzETrAHRczGLUTW0t78j4AzdpijHVrtDeyr6smvTMwWoAxZZkIEywF1cW7mmx5O6YdpjXiFKY1G00cwalM3oQ';
  PaymentIntentResult _paymentIntent;
  Source _source;

  final CreditCard testCard = CreditCard(
    number: '4000002760003184',
    expMonth: 12,
    expYear: 21,
  );

  @override
  Future<Unit> stripePayment() async {
    StripePayment.setOptions(
      StripeOptions(
        publishableKey: 'pk_test_51H2CzIFLTh40WGzEVSBz5a5JxfFn6DXngphswVZcTwESpX7vNNaVUX9vroLMvAhnoQpFTvsbefTOxvrKTb7RrP1q00eSD8KblS',
        merchantId: "Test",
        androidPayMode: 'test'
      ),
    );

    // StripePayment.createSourceWithParams(
    //   SourceParams(
    //     returnURL: null,
    //     type: 'ideal',
    //     amount: 18000,
    //     currency: 'rub',
    //   ),
    // ).then((Source value) => _source = value);

    StripePayment.paymentRequestWithNativePay(
      androidPayOptions: AndroidPayPaymentRequest(
        currencyCode: 'RUB',
        totalPrice: '18000',
      ),
      applePayOptions: ApplePayPaymentOptions(
        countryCode: 'RU',
        currencyCode: 'RUB',
        items: [
          ApplePayItem(
            label: 'Лицо ашота',
            amount: '15000',
          )
        ]
      ),
    )
    .then((value) => StripePayment.completeNativePayRequest())
    .catchError(setError);
    
    return unit;
  }
  

  void setError(dynamic error) {
    print(error);
  }
}
