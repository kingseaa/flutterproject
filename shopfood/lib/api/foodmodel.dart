class Food {
  String? name;
  String? desc;
  String? cal;
  String? img;
  String? price;
  String? id;

  Food({this.name, this.desc, this.cal, this.img, this.price, this.id});

  Food.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    cal = json['cal'];
    img = json['img'];
    price = json['price'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['desc'] = desc;
    data['cal'] = cal;
    data['img'] = img;
    data['price'] = price;
    data['id'] = id;
    return data;
  }
}
