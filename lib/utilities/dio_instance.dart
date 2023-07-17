import 'package:dio/dio.dart';
import 'package:ithaaty_app/constants/endpoints.dart';

final dio = Dio(
  BaseOptions(contentType: "application/json", baseUrl: Endpoints.baseUrl),
);
