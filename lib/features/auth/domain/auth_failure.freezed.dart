// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic failure) unknow,
    required TResult Function() userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic failure)? unknow,
    TResult? Function()? userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic failure)? unknow,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowError value) unknow,
    required TResult Function(UserNotExist value) userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknowError value)? unknow,
    TResult? Function(UserNotExist value)? userNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowError value)? unknow,
    TResult Function(UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknowErrorCopyWith<$Res> {
  factory _$$UnknowErrorCopyWith(
          _$UnknowError value, $Res Function(_$UnknowError) then) =
      __$$UnknowErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic failure});
}

/// @nodoc
class __$$UnknowErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UnknowError>
    implements _$$UnknowErrorCopyWith<$Res> {
  __$$UnknowErrorCopyWithImpl(
      _$UnknowError _value, $Res Function(_$UnknowError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$UnknowError(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknowError implements UnknowError {
  const _$UnknowError(this.failure);

  @override
  final dynamic failure;

  @override
  String toString() {
    return 'AuthFailure.unknow(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknowError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknowErrorCopyWith<_$UnknowError> get copyWith =>
      __$$UnknowErrorCopyWithImpl<_$UnknowError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic failure) unknow,
    required TResult Function() userNotExist,
  }) {
    return unknow(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic failure)? unknow,
    TResult? Function()? userNotExist,
  }) {
    return unknow?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic failure)? unknow,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowError value) unknow,
    required TResult Function(UserNotExist value) userNotExist,
  }) {
    return unknow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknowError value)? unknow,
    TResult? Function(UserNotExist value)? userNotExist,
  }) {
    return unknow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowError value)? unknow,
    TResult Function(UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(this);
    }
    return orElse();
  }
}

abstract class UnknowError implements AuthFailure {
  const factory UnknowError(final dynamic failure) = _$UnknowError;

  dynamic get failure;
  @JsonKey(ignore: true)
  _$$UnknowErrorCopyWith<_$UnknowError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotExistCopyWith<$Res> {
  factory _$$UserNotExistCopyWith(
          _$UserNotExist value, $Res Function(_$UserNotExist) then) =
      __$$UserNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotExistCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserNotExist>
    implements _$$UserNotExistCopyWith<$Res> {
  __$$UserNotExistCopyWithImpl(
      _$UserNotExist _value, $Res Function(_$UserNotExist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotExist implements UserNotExist {
  const _$UserNotExist();

  @override
  String toString() {
    return 'AuthFailure.userNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic failure) unknow,
    required TResult Function() userNotExist,
  }) {
    return userNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic failure)? unknow,
    TResult? Function()? userNotExist,
  }) {
    return userNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic failure)? unknow,
    TResult Function()? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowError value) unknow,
    required TResult Function(UserNotExist value) userNotExist,
  }) {
    return userNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknowError value)? unknow,
    TResult? Function(UserNotExist value)? userNotExist,
  }) {
    return userNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowError value)? unknow,
    TResult Function(UserNotExist value)? userNotExist,
    required TResult orElse(),
  }) {
    if (userNotExist != null) {
      return userNotExist(this);
    }
    return orElse();
  }
}

abstract class UserNotExist implements AuthFailure {
  const factory UserNotExist() = _$UserNotExist;
}
