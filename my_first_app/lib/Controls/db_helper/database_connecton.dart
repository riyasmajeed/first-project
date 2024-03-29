



import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';


class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path,'app');
    
    var database =await openDatabase(path,version: 1, onCreate:_createDatabase);
    
    return database;
  }

  // Create Table//
Future<void>_createDatabase(Database database,int version) async{
  String sql = "CREATE TABLE users (id INTEGER PRIMARY KEY,brand TEXT,price TEXT,description TEXT,imageurl TEXT);";
  await database.execute(sql);
}


}
