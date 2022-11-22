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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['cal'] = this.cal;
    data['img'] = this.img;
    data['price'] = this.price;
    data['id'] = this.id;
    return data;
  }
}
