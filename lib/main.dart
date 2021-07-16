import 'package:dr_doc/Screens/SearchPage/SearchPage.dart';
import 'package:flutter/material.dart';

import 'Screens/HomePage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Colors.white,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
