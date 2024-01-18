import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class Api {
  Dio dio = Dio();

  Future get({required String path}) async {
    final res = await http.get(Uri.parse(path));
    return res.body;
  }

  Future post(String path, Map? request) async {
    final res = await http.post(
      Uri.parse(path),
      body: jsonEncode(request),
      headers: {'ngrok-skip-browser-warning': '1'},
    );
    return res.body;
  }
}
