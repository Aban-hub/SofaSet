import 'dart:io';

import 'package:dio/dio.dart';

class UserApiProvider {
  static const BASE_URL = "http://3.128.41.140";
  static const String apiEndpoint = BASE_URL + "/sellerapp/public/v1/";
  static const String apiAuthKey = "89L7Sl3jBPRaoQlZ_Fwsem4p8jzXLqpBjlXR";
  final Dio _dio;

  UserApiProvider(this._dio);

}
