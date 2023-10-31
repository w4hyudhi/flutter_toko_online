import 'dart:convert';
import 'package:flutter_toko_online/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'http://192.168.100.77:8000/api';

  Future<List<ProductModel>> getProduct() async {
    var url = Uri.parse('$baseUrl/products');
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      url,
      headers: headers,
    );
    print('response : ${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
