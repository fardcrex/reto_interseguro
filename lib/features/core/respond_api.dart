import 'package:freezed_annotation/freezed_annotation.dart';

part 'respond_api.freezed.dart';
part 'respond_api.g.dart';

@freezed
class RespondApi with _$RespondApi {
  factory RespondApi({
    required int code,
    required String message,
    required Map<String, dynamic> body,
  }) = _RespondApi;

  factory RespondApi.fromJson(Map<String, dynamic> json) => _$RespondApiFromJson(json);
}
