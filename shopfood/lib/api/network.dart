import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'foodModel.dart';

// List<Food> parseFood(String responseBody) {
//   var list = json.decode(responseBody) as List<dynamic>;
//   List<Food> foods = list.map((model) => Food.fromJson(model)).toList();
//   return foods;
// }

// Future<List<Food>> fetchFoods() async {
//   final response = await http
//       .get(Uri.parse('https://63779e945c4777651222f7d9.mockapi.io/api/foods'));
//   if (response.statusCode == 200) {
//     return compute(parseFood, response.body);
//     // return Food.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Err');
//   }
// }
class fetchFoods {
  var data = [];
  List<Food> results = [];
  String fetchUrl = 'https://63779e945c4777651222f7d9.mockapi.io/api/foods';

  Future<List<Food>> fetchFoodss({String? query}) async {
    var url = Uri.parse(fetchUrl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => Food.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print('api err');
      }
    } on Exception catch (e) {
      print('err: $e');
    }
    return results;
  }
}
