class Food {
  String id;
  String price;
  String name;
  String type;
  String image;
  int quantity;


  Food(this.id, this.price, this.name, this.type, this.image, this.quantity);

  Map<String,dynamic> toMap(){
    final map = Map<String,dynamic>();
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    map['type'] = type;
    map['price'] = price;
    map['quantity'] = quantity;
    return map;
  }

  fromMap(Map<String,dynamic> map){
    id = map['id'];
    name = map['name'];
    image = map['image'];
    type = map['type'];
    price = map['price'];
    quantity = map['quantity'];
  }
}


