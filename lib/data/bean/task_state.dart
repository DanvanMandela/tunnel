import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum TaskState {
  @JsonValue('PENDING')
  pending,
  @JsonValue('IN_PROGRESS')
  progress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  canceled,
  @JsonValue('OVERDUE')
  overdue,
}
