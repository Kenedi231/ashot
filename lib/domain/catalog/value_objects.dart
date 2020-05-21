import 'package:ashot/domain/core/failures.dart';
import 'package:ashot/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

class ProuctTypes {
  static const dishes = 'dishes';
  static const drink = 'drink';
}

class ProductType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProductType(String input) {
    assert(input != null);
    return ProductType._(right(input));
  }
  const ProductType._(
    this.value,
  ) : assert(value != null);
}
