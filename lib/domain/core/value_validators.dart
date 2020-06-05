import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePrice(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.numberMustBePositive(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input) {
  const phoneRegex = r"""^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$""";
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateURL(String input) {
  const urlPattern =
      r"^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$";

  if (RegExp(urlPattern).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidURL(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateCount(int input) {
  if (input is int) {
    return right(input);
  } else {
    return left(ValueFailure.numberMustBePositive(failedValue: input));
  }
}
