import 'package:equatable/equatable.dart';
import 'package:tunnel/data/global_response.dart';

abstract class ApiState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ApiInitialState extends ApiState {}

class ApiLoadingState extends ApiState {}

class ApiSuccessState extends ApiState {
  final GlobalResponse data;

  ApiSuccessState({required this.data});

  @override
  List<Object?> get props => [data];
}

class ApiErrorState extends ApiState {
  final String message;

  ApiErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}