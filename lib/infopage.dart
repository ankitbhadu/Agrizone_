import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:core';
int cno;
class InfoPage extends StatefulWidget {
  InfoPage(int data){
    cno=data;
  }

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  String cname;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Company Information"),),
      floatingActionButton: FloatingActionButton.extended(onPressed: null, icon: new Icon(Icons.add), label: new Text("Join")),
      backgroundColor: Colors.white,
      body: new Center(

        child: new Center(
          child: new FutureBuilder(
            future:DefaultAssetBundle.of(context).loadString('load_json/companies.json'),
            builder: (context,snapshot){
              var companies= json.decode(snapshot.data.toString());
              cname=companies[cno]['name'];
              return new Column(

                children: <Widget>[
                  new Padding(padding: const EdgeInsets.all(10.0)),
                  new CircleAvatar(radius: 45.0,backgroundImage: new NetworkImage(companies[cno]['avatarUrl']),),
                  new Padding(padding: const EdgeInsets.all(10.0)),

                  new Text(cname,style: new TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35.0),textAlign: TextAlign.center,),

                  new Padding(padding: const EdgeInsets.all(20.0)),
                  new Text("Items Sold by the company:",style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0), ),
                  new Padding(padding: const EdgeInsets.all(5.0)),
                  new Text(companies[cno]['products'],softWrap: true,textAlign: TextAlign.center,style: new TextStyle(fontSize: 20.0),),
                  new Padding(padding: const EdgeInsets.all(20.0)),
                  new Text("Rating:-",style:new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                  new Padding(padding: const EdgeInsets.all(5.0)),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                     // new Padding(padding: const EdgeInsets.symmetric(horizontal: 80.0)),
                      new Image(image: new AssetImage('load_json/star.png'),height: 40.0,),
                      new Padding(padding: const EdgeInsets.only(left:5.0)),
                      new Text(companies[cno]['review'],style: new TextStyle(fontSize: 20.0),),
                      new Text(" of 5",style: new TextStyle(fontSize: 20.0)
                      )
                    ],
                  ),


                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
