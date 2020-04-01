import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase() {
  getDatabasesPath().then((dbpath){
    final String path = join(dbpath, 'bytebank.db');

    openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLES contacts'
      'id INTEGER PRIMARY KEY, '
      'name TEXT '
      'account_number INTENGER)');
    }, version: 1);
  });
}