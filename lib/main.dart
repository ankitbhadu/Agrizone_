import 'package:flutter/material.dart';
import 'homepage.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "talki",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),
      color: Colors.yellow,
    );

  }
}
