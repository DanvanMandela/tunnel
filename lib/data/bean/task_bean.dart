import 'package:json_annotation/json_annotation.dart';
import 'package:tunnel/data/bean/task_priority.dart';
import 'package:tunnel/data/bean/task_state.dart';

part 'task_bean.g.dart';

@JsonSerializable()
class TaskBean {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'priority', defaultValue: TaskModelPriority.low)
  TaskModelPriority priority;

  @JsonKey(name: 'state')
  TaskState state;

  @JsonKey(name: 'dueOn')
  int? dueOn;

  @JsonKey(name: 'startTime')
  int? startTime;

  @JsonKey(name: 'endTime')
  int? endTime;

  @JsonKey(name: 'updatedOn')
  int? updatedOn;

  @JsonKey(name: 'isArchived')
  bool isArchived;

  @JsonKey(name: 'reminders')
  List<int> reminders;

  TaskBean({
    required this.id,
    required this.title,
    required this.description,
    required this.priority,
    required this.state,
    this.dueOn,
    this.startTime,
    this.endTime,
    this.updatedOn,
    required this.isArchived,
    this.reminders = const [],
  });

  factory TaskBean.fromJson(Map<String, dynamic> json) =>
      _$TaskBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TaskBeanToJson(this);
}
