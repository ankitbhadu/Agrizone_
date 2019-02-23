import 'package:flutter/material.dart';
import 'HomePageFarmer.dart';
void main()=> runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Agrizone",
      theme: new ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent
      ),
      home: new HomePageFarmersbuy(),
    );
  }
}

