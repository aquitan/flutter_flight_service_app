import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gethigh/api/models/users.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class GetHighClient {
  factory GetHighClient(Dio dio, {String baseUrl}) = _GetHighClient;

  factory GetHighClient.create({String? apiUrl}) {
    final dio = Dio();
    if (apiUrl != null) {
      return GetHighClient(dio, baseUrl: apiUrl);
    }
    return GetHighClient(dio);
  }

  @GET('users')
  Future<List<Users>> getUsers();
}

GetHighClient initApiClient() {
  final apiUrl = dotenv.env['API_URL'];
  final dio = Dio();
  if (apiUrl != null) {
    return GetHighClient(dio, baseUrl: apiUrl);
  }
  return GetHighClient(dio);
}
