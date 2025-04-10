import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api_event.dart';
import 'api_state.dart';
import 'global_response.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  ApiBloc() : super(ApiInitialState()) {
    // Register event handlers here
    on<GetDataEvent>(_onGetDataEvent);
    on<PostDataEvent>(_onPostDataEvent);
  }

  // Handle GetDataEvent
  Future<void> _onGetDataEvent(
    GetDataEvent event,
    Emitter<ApiState> emit,
  ) async {
    emit(ApiLoadingState());
    try {
      final response = await http.get(Uri.parse(event.url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        emit(ApiSuccessState(data: data));
      } else {
        emit(ApiErrorState(message: 'Failed to load data'));
      }
    } catch (e) {
      emit(ApiErrorState(message: e.toString()));
    }
  }

  // Handle PostDataEvent
  Future<void> _onPostDataEvent(
    PostDataEvent event,
    Emitter<ApiState> emit,
  ) async {
    emit(ApiLoadingState());
    try {
      final response = await http.post(
        Uri.parse(event.url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              '',
        },
        body: json.encode(event.data),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final data = GlobalResponse.fromJson(jsonResponse);
        emit(ApiSuccessState(data: data));
      } else {
        emit(ApiErrorState(message: 'Failed to post data'));
      }
    } catch (e) {
      emit(ApiErrorState(message: e.toString()));
    }
  }
}
