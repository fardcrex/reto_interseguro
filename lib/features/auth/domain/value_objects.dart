import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inter_login/features/core/failures.dart';
import 'package:inter_login/features/core/value_objects.dart';

@immutable
class Username extends ValueObject<String> {
  static const maxLength = 8;

  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) => Username._(validateUsername(input.trim()));

  const Username._(this.value);

  static Either<ValueFailure<String>, String> validateUsername(String input) {
    if (input.isEmpty) return left(ValueFailure.emptyOrNullCharacters(failedValue: input));

    if (input.length > maxLength) return left(ValueFailure.characterLimitExceeded(failedValue: input));

    return right(input);
  }
}

@immutable
class Password extends ValueObject<String> {
  static const int maxLength = 60;

  static const int minLength = 6;

  static final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^\w\d])\S{6,}$');

  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input.trim()));
  }

  const Password._(this.value);

  static Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.isEmpty) return left(ValueFailure.emptyOrNullCharacters(failedValue: input));

    if (input.length > maxLength) return left(ValueFailure.characterLimitExceeded(failedValue: input));

    if (!regex.hasMatch(input)) return left(ValueFailure.invalidFormat(failedValue: input));

    return right(input);
  }
}
