import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.characterLimitExceeded({required T failedValue}) = CharacterLimitExceeded<T>;
  const factory ValueFailure.emptyOrNullCharacters({required T failedValue}) = EmptyOrNullCharacters<T>;
  const factory ValueFailure.invalidFormat({required T failedValue}) = InvalidFormat<T>;
}

@freezed
class GlobalFailure<F> with _$GlobalFailure<F> {
  const factory GlobalFailure.serverError(F failure) = ServerError<F>;
  const factory GlobalFailure.notConnection() = NotConnection<F>;
  const factory GlobalFailure.timeOutExceeded() = TimeOutExceeded<F>;
  const factory GlobalFailure.internalError(dynamic err, [StackTrace? st]) = LocalError<F>;

  factory GlobalFailure.fromException(Object err, [StackTrace? st]) {
    if (err is SocketException) return const GlobalFailure.notConnection();

    if (err is TimeoutException) return const GlobalFailure.timeOutExceeded();

    if (kDebugMode) Logger().e('Exception Global Failure', err, st);

    return GlobalFailure.internalError(err, st);
  }
}
