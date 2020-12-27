import 'package:bytebank_modulo2/database/app_database.dart';
import 'package:bytebank_modulo2/screen/contact_form.dart';
import 'package:bytebank_modulo2/screen/contacts_list.dart';
import 'package:bytebank_modulo2/screen/dashboard.dart';
import 'package:flutter/material.dart';

import 'model/contact.dart';

void main() {
  runApp(BytebankApp());
  save(Contact(1, 'david', 1000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}


