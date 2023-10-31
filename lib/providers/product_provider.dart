import 'package:flutter/material.dart';
import 'package:flutter_toko_online/models/product_model.dart';
import 'package:flutter_toko_online/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _product = [];
  List<ProductModel> get products => _product;
  set products(List<ProductModel> products) {
    _product = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProduct();
      _product = products;
    } catch (e) {
      print(e);
    }
  }
}
