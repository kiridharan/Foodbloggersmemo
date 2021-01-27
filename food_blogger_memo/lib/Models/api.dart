import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_blogger_memo/Models/Shop_details.dart';
import 'package:http/http.dart' as http;

class ShopProvider with ChangeNotifier {
  ShopProvider() {
    this.fetchtask();
  }

  List<ShopDetails> _details = [];

  List<ShopDetails> get details {
    return [..._details];
  }

  fetchtask() async {
    final url = 'http://10.0.2.2:8000/api/v1/?format=json';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      _details =
          data.map<ShopDetails>((json) => ShopDetails.fromJson(json)).toList();
    } else {
      print('lost');
    }
  }
}
