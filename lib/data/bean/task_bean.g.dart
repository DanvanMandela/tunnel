// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskBean _$TaskBeanFromJson(Map<String, dynamic> json) => TaskBean(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  priority:
      $enumDecodeNullable(_$TaskModelPriorityEnumMap, json['priority']) ??
      TaskModelPriority.low,
  state: $enumDecode(_$TaskStateEnumMap, json['state']),
  dueOn: (json['dueOn'] as num?)?.toInt(),
  startTime: (json['startTime'] as num?)?.toInt(),
  endTime: (json['endTime'] as num?)?.toInt(),
  updatedOn: (json['updatedOn'] as num?)?.toInt(),
  isArchived: json['isArchived'] as bool,
  reminders:
      (json['reminders'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
);

Map<String, dynamic> _$TaskBeanToJson(TaskBean instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'priority': _$TaskModelPriorityEnumMap[instance.priority]!,
  'state': _$TaskStateEnumMap[instance.state]!,
  'dueOn': instance.dueOn,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'updatedOn': instance.updatedOn,
  'isArchived': instance.isArchived,
  'reminders': instance.reminders,
};

const _$TaskModelPriorityEnumMap = {
  TaskModelPriority.low: 'LOW',
  TaskModelPriority.medium: 'MEDIUM',
  TaskModelPriority.high: 'HIGH',
};

const _$TaskStateEnumMap = {
  TaskState.pending: 'PENDING',
  TaskState.progress: 'IN_PROGRESS',
  TaskState.completed: 'COMPLETED',
  TaskState.canceled: 'CANCELLED',
  TaskState.overdue: 'OVERDUE',
};
