import 'package:equatable/equatable.dart';

abstract class ApiEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetDataEvent extends ApiEvent {
  final String url;

  GetDataEvent({required this.url});

  @override
  List<Object?> get props => [url];
}

class PostDataEvent extends ApiEvent {
  final String url;
  final Map<String, dynamic> data;

  PostDataEvent({required this.url, required this.data});

  @override
  List<Object?> get props => [url, data];
}