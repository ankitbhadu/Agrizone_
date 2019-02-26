import 'package:flutter/material.dart';
import 'HomePageFarmer.dart';
import 'app_bar.dart';
import'drawer.dart';
final PreferredSize abcd=new PreferredSize(child: new app_bar(), preferredSize: Size.fromHeight(55.0));
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
      home: Scaffold(appBar: abcd,
    drawer:new dapp(),
    body: new HomePageFarmersbuy(),
    ),
    );
  }
}

