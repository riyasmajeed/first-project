 
import 'package:my_first_app/Controls/db_helper/Service/userService.dart';
import 'package:my_first_app/Models/user.dart';

 List<User> _userList = <User>[];
 final _userSevice = UserService();

 //returning userlist to home screen //
 Future<List<User>> getAllUserDetails() async {
    var users = await _userSevice.readAlluser();
    _userList = <User>[];
    users.forEach((user) {
      // setState(() {
         var usermodel = User();
        usermodel.id = user['id'];
        usermodel.brand = user['brand'];
         usermodel.price = user['price'];
        usermodel.description = user['description'];
        usermodel.imageurl = user['imageurl'];

         _userList.add(usermodel);
      // });
    });
    return _userList;
  }
  
