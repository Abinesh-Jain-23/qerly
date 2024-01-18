import 'package:dio/dio.dart';

class Api {
  Dio dio = Dio();

  Future get({required String path}) async {
    final response = await dio.get(path,
        options: Options(
          method: 'get',
          headers: {'ngrok-skip-browser-warning': 'hari'},
        ));
    return response.data;
  }
}
