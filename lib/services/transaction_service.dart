import 'dart:convert';
import 'dart:io';
import 'package:flutter_toko_online/models/cart_model.dart';
import 'package:http/http.dart' as http;

class TransactionService {
  String baseUrl = 'http://192.168.100.77:8000/api';

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    var url = Uri.parse('$baseUrl/checkout');
    // var headers = {
    //   'Content-Type': 'application/json',
    //   'Authorization': token,
    // };

    final headers = {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.authorizationHeader: token,
    };

    var body = jsonEncode({
      'address': 'Merauke',
      'items': carts
          .map((cart) => {
                'id': cart.product!.id,
                'quantity': cart.quantity,
              })
          .toList(),
      'status': 'PENDING',
      'total_price': totalPrice,
      'shipping_price': 0
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print('response : ${response.body}');
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Chekcout');
    }
  }
}
