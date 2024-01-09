class  User {
  int? id;
  String? brand;
  String? price;
  String? description;

  userMap() {
    var mapping = Map<String,dynamic>();
    mapping['id'] = id ?? null;
    mapping['brand'] = brand!;
    mapping['price'] = price!;
    mapping['description'] = description!;
    return mapping;
  }
}
