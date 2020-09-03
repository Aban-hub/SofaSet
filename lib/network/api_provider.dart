import 'dart:io';

import 'package:dio/dio.dart';

class UserApiProvider {
  static const BASE_URL = "https://stylemixthemes.com/masterstudy/academy";
  static const String apiEndpoint = BASE_URL + "/wp-json/ms_lms/v1/";
  final Dio _dio;

  UserApiProvider(this._dio);


}
