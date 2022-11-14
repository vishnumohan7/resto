import 'package:flutter/material.dart';
import 'package:resto_cafe/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent
      ),home: HomePage(),
    );
  }
}
