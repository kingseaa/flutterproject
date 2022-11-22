
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'foodModel.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';


List<Food> parseFood(String responseBody){
  var list = json.decode(responseBody) as List<dynamic>;
  List<Food> foods = list.map((model)=> Food.fromJson(model)).toList();
  return foods;
} 

Future<List<Food>> fetchFoods() async {
  final response = await http.get(Uri.parse('https://63779e945c4777651222f7d9.mockapi.io/api/foods'));
  if(response.statusCode == 200){
    return compute(parseFood, response.body);
    // return Food.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Err');
  }
}