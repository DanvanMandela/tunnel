import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TaskModelPriority {
  @JsonValue('LOW')
  low,
  @JsonValue('MEDIUM')
  medium,
  @JsonValue('HIGH')
  high,
}
