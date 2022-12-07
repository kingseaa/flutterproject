import 'dart:convert';

import 'package:http/http.dart' as http;

class ListFoods {
  String? id;
  String? name;
  String? img;
  String? price;
  String? discount;

  ListFoods({this.id, this.name, this.img, this.price, this.discount});

  ListFoods.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
    price = json['price'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['img'] = img;
    data['price'] = price;
    data['discount'] = discount;
    return data;
  }

  List<ListFoods> ulist = [];
  List<ListFoods> userLists = [];
  //API call for All ListFoods List

  String url =
      'https://638f01989cbdb0dbe31a4048.mockapi.io/api/lists/listfoods';

  Future<List<ListFoods>> getAllulistList() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        // print(response.body);
        List<ListFoods> list = parseAgents(response.body);
        return list;
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<ListFoods> parseAgents(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<ListFoods>((json) => ListFoods.fromJson(json)).toList();
  }
}
