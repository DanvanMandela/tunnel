import 'package:tunnel/service/service_helper.dart';

abstract class ApiService {
  @GET('/users')
  Future<List<String>> getUsers();

  @POST('/users')
  Future<String> createUser(@Body() String user);
}
