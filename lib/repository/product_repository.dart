import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../constants/endpoints.dart';

part 'product_repository.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET(Endpoints.products)
  Future<dynamic> getProductList();
}
