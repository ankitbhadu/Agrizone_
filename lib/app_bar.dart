import 'package:flutter/material.dart';

class app_bar extends StatefulWidget {
  @override
  _app_barState createState() => _app_barState();
}

class _app_barState extends State<app_bar> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return new AppBar(

      iconTheme: new IconThemeData(color: Colors.grey),
      backgroundColor: Colors.white,
      elevation: 0.3,
      actions: <Widget>[




        Image.asset('assets/a.jpg',height: 20,width: 20,),
        Row(children: <Widget>[

          Switch(value: isChecked, onChanged:(value) {
            setState(() {
              isChecked = value;
            });

          },
            activeColor: Colors.blue,
            activeTrackColor: Colors.lightBlueAccent,

          ),

        ],),
        Image.asset('assets/aa.png',height: 20,width: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 10),
          child: Icon(Icons.language),
        ),

      ],
      title: new Center(child: Image.asset('assets/logo2.png',fit:BoxFit.cover ),) ,
    ) ;
    ;
  }
}



