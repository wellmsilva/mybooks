import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'db/moor_database.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => AppDatabase(),
      // create: (BuildContext context) {  },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meus Livros',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
