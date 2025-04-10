import 'package:json_annotation/json_annotation.dart';
import 'package:tunnel/data/response_status.dart';

part 'global_response.g.dart';

@JsonSerializable()
class GlobalResponse {
  final String? message;
  final dynamic data;
  final ResponseStatus status;

  GlobalResponse({this.message, this.data, required this.status});

  factory GlobalResponse.fromJson(Map<String, dynamic> json) =>
      _$GlobalResponseFromJson(json);


  Map<String, dynamic> toJson() => _$GlobalResponseToJson(this);
}
