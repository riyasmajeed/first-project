import 'dart:async';

import 'package:my_first_app/Models/user.dart';
import 'package:my_first_app/Controls/db_helper/repository.dart';

class UserService{
  late Repository _repository;
  UserService(){
    _repository =Repository();
  }

//save user
  saveUser(User user)async{
    return await _repository.insertData("users", user.userMap());
  }

//Read all user
readAlluser() async{
  return await _repository.readData('users');
}




}