import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ResponseStatus {
  @JsonValue('OK')
  ok,
  @JsonValue('BAD_REQUEST')
  badRequest,
}
