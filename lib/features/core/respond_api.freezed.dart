// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'respond_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RespondApi _$RespondApiFromJson(Map<String, dynamic> json) {
  return _RespondApi.fromJson(json);
}

/// @nodoc
mixin _$RespondApi {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RespondApiCopyWith<RespondApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespondApiCopyWith<$Res> {
  factory $RespondApiCopyWith(
          RespondApi value, $Res Function(RespondApi) then) =
      _$RespondApiCopyWithImpl<$Res, RespondApi>;
  @useResult
  $Res call({int code, String message, Map<String, dynamic> body});
}

/// @nodoc
class _$RespondApiCopyWithImpl<$Res, $Val extends RespondApi>
    implements $RespondApiCopyWith<$Res> {
  _$RespondApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RespondApiCopyWith<$Res>
    implements $RespondApiCopyWith<$Res> {
  factory _$$_RespondApiCopyWith(
          _$_RespondApi value, $Res Function(_$_RespondApi) then) =
      __$$_RespondApiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, Map<String, dynamic> body});
}

/// @nodoc
class __$$_RespondApiCopyWithImpl<$Res>
    extends _$RespondApiCopyWithImpl<$Res, _$_RespondApi>
    implements _$$_RespondApiCopyWith<$Res> {
  __$$_RespondApiCopyWithImpl(
      _$_RespondApi _value, $Res Function(_$_RespondApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? body = null,
  }) {
    return _then(_$_RespondApi(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RespondApi implements _RespondApi {
  _$_RespondApi(
      {required this.code,
      required this.message,
      required final Map<String, dynamic> body})
      : _body = body;

  factory _$_RespondApi.fromJson(Map<String, dynamic> json) =>
      _$$_RespondApiFromJson(json);

  @override
  final int code;
  @override
  final String message;
  final Map<String, dynamic> _body;
  @override
  Map<String, dynamic> get body {
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_body);
  }

  @override
  String toString() {
    return 'RespondApi(code: $code, message: $message, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RespondApi &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RespondApiCopyWith<_$_RespondApi> get copyWith =>
      __$$_RespondApiCopyWithImpl<_$_RespondApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RespondApiToJson(
      this,
    );
  }
}

abstract class _RespondApi implements RespondApi {
  factory _RespondApi(
      {required final int code,
      required final String message,
      required final Map<String, dynamic> body}) = _$_RespondApi;

  factory _RespondApi.fromJson(Map<String, dynamic> json) =
      _$_RespondApi.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  Map<String, dynamic> get body;
  @override
  @JsonKey(ignore: true)
  _$$_RespondApiCopyWith<_$_RespondApi> get copyWith =>
      throw _privateConstructorUsedError;
}
