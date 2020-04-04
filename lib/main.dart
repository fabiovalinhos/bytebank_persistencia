import 'package:bytebank_persistencia/models/contact.dart';
import 'package:bytebank_persistencia/screens/contact_fom.dart';
import 'package:bytebank_persistencia/screens/contacts_list.dart';
import 'package:bytebank_persistencia/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:bytebank_persistencia/database/app_database.dart';

void main() {
  runApp(ByteBankApp());
    save(Contact(0, "Fábio Valinhos for Seven", 2000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class ByteBankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        )
      ),
      home: Dashboard()
    );
  }
}

