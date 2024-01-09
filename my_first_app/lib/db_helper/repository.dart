import 'package:my_first_app/db_helper/database_connecton.dart';
import 'package:sqflite/sqflite.dart';

class Repository{

  late DatabaseConnection _databaseConnection;
  Repository(){
    _databaseConnection = DatabaseConnection();
  }
 static Database? _database;
 Future<Database?> get database async{
  if(_database != null){
    return _database;
  }
  else{
    _database = await _databaseConnection.setDatabase();
    return _database;
  }
 }


// Insert data
insertData(table,data) async {
  var connection =await database;
  return await connection?.insert(table,data);
}
// Read all record
readData(table) async{
  var connection =await database;
  return await connection?.query(table);
}

//delete data
deleteData(table) async{
  var connection =await database;
  return await connection?.delete(table);
}

}