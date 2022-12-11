// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) {
  return _RequestLogin.fromJson(json);
}

/// @nodoc
mixin _$RequestLogin {
  @JsonKey(name: 'user')
  String get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoginCopyWith<RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginCopyWith<$Res> {
  factory $RequestLoginCopyWith(
          RequestLogin value, $Res Function(RequestLogin) then) =
      _$RequestLoginCopyWithImpl<$Res, RequestLogin>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String account,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$RequestLoginCopyWithImpl<$Res, $Val extends RequestLogin>
    implements $RequestLoginCopyWith<$Res> {
  _$RequestLoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestLoginCopyWith<$Res>
    implements $RequestLoginCopyWith<$Res> {
  factory _$$_RequestLoginCopyWith(
          _$_RequestLogin value, $Res Function(_$_RequestLogin) then) =
      __$$_RequestLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String account,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$_RequestLoginCopyWithImpl<$Res>
    extends _$RequestLoginCopyWithImpl<$Res, _$_RequestLogin>
    implements _$$_RequestLoginCopyWith<$Res> {
  __$$_RequestLoginCopyWithImpl(
      _$_RequestLogin _value, $Res Function(_$_RequestLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? password = null,
  }) {
    return _then(_$_RequestLogin(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestLogin implements _RequestLogin {
  _$_RequestLogin(
      {@JsonKey(name: 'user') required this.account,
      @JsonKey(name: 'password') required this.password});

  factory _$_RequestLogin.fromJson(Map<String, dynamic> json) =>
      _$$_RequestLoginFromJson(json);

  @override
  @JsonKey(name: 'user')
  final String account;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'RequestLogin(account: $account, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestLogin &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestLoginCopyWith<_$_RequestLogin> get copyWith =>
      __$$_RequestLoginCopyWithImpl<_$_RequestLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestLoginToJson(
      this,
    );
  }
}

abstract class _RequestLogin implements RequestLogin {
  factory _RequestLogin(
          {@JsonKey(name: 'user') required final String account,
          @JsonKey(name: 'password') required final String password}) =
      _$_RequestLogin;

  factory _RequestLogin.fromJson(Map<String, dynamic> json) =
      _$_RequestLogin.fromJson;

  @override
  @JsonKey(name: 'user')
  String get account;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_RequestLoginCopyWith<_$_RequestLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
