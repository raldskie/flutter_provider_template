import 'package:flutter/foundation.dart';
import 'package:ithaaty_app/models/product_model.dart';
import 'package:ithaaty_app/utilities/dio_instance.dart';

import '../enums/loading_enums.dart';
import '../repository/product_repository.dart';

class AuthProvider extends ChangeNotifier {
  final List<Loading> _loading = [];
  List<Loading> get loading => _loading;

  Map userData = {};

  List<Product> _productList = [];
  List<Product> get productList => _productList;

  addLoading(Loading loading) {
    _loading.add(loading);
    notifyListeners();
  }

  stopLoading(Loading loading) {
    _loading.removeWhere((e) => e == loading);
    notifyListeners();
  }

  getUserData() async {
    addLoading(Loading.userData);
    await Future.delayed(const Duration(seconds: 2));
    userData = {"name": "Gerakd", "age": 23};
    stopLoading(Loading.userData);
  }

  getProducts() async {
    addLoading(Loading.productList);
    dynamic products = await ProductApi(
      // We must create a model for the general API resp
      dio,
    ).getProductList();
    _productList =
        (products['products'] as List).map((e) => Product.fromJson(e)).toList();
    stopLoading(Loading.productList);
  }
}
