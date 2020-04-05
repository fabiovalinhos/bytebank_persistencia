import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:bytebank_persistencia/database/dao/contact_dao.dart';

Future<Database> getDatabase() async {
  final String dbpath = await getDatabasesPath();
  final String path = join(dbpath, 'bytebank.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
    // onDowngrade: onDatabaseDowngradeDelete,
  );

  // return getDatabasesPath().then((dbPath) {
  //   final String path = join(dbPath, 'bytebank.db');
  //   // deleteDatabase(path);
  //   return openDatabase(path, onCreate: (db, version){
  //     db.execute('CREATE TABLE contacts('
  //       'id INTEGER PRIMARY KEY, '
  //       'name TEXT, '
  //       'account_number INTEGER)',);
  //   }, version: 1,
  //   // onDowngrade: onDatabaseDowngradeDelete,
  //   );
  // });
}