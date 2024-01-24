//user model// 

class  User {
  int? id;
  String? brand;
  String? price;
  String? description;
  String?  imageurl;

//convert values in mapp//
  userMap() {
    var mapping = Map<String,dynamic>();
    mapping['id'] = id ?? null;
    mapping['brand'] = brand!;
    mapping['price'] = price!;
    mapping['description'] = description!;
    mapping['Imageurl']=imageurl;
    return mapping;
  }
}
