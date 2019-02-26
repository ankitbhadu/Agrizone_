import 'package:flutter/material.dart';
import 'dart:convert';
import 'infopage.dart';
import 'app_bar.dart';

class HomePageFarmersbuy extends StatefulWidget {

  List data;
  @override
  _HomePageFarmersbuyState createState() => _HomePageFarmersbuyState();
}

class _HomePageFarmersbuyState extends State<HomePageFarmersbuy> {
  
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('load_json/companies.json'),
          builder: (context,snapshot){
             var companies= json.decode(snapshot.data.toString());
             return new ListView.builder(
                 itemBuilder: (BuildContext context,int index){
                   return new Card(
                     margin: EdgeInsets.all(0.0),
                       shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0.0),
                           side: BorderSide(color: Colors.grey,width: 0.1)),
                     child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: <Widget>[

                     new ListTile(onTap:
                     (){Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new InfoPage(index)));},

                         leading: new CircleAvatar(
                         foregroundColor: Theme.of(context).primaryColor,
                         backgroundColor: Colors.grey,
                         radius: 35.0,
                         backgroundImage: new NetworkImage('companies[index].avatarUrl'),

                       ),
                       title: new Row(crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                            new Text(
                             companies[index]['name'],
                             style: new TextStyle(fontWeight: FontWeight.w600,fontFamily: "Georgia" ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              ),


                         ],
                       ),
                       subtitle: Row(
                         children: <Widget>[
                            Expanded(
                            flex: 6,
                            child: new Column( crossAxisAlignment: CrossAxisAlignment.start,

                                children:<Widget>[

                                  Text(companies[index]['products'],
                               style: new TextStyle(color: Colors.grey, fontSize: 16.0,fontFamily: "Georgia"),
                                    overflow: TextOverflow.ellipsis,maxLines: 1,
                            ),
                            ]
                            ),
                            ),
                           Expanded(
                             flex: 4,
                           child:new Column(
                               crossAxisAlignment: CrossAxisAlignment.end,

                               children:<Widget>[
                             Row(mainAxisAlignment: MainAxisAlignment.end,
                               children: <Widget>[
                                 Image.asset('assets/5star.png',width: 40.0,),
                                     new Text(companies[index]['review']+'/5',textAlign: TextAlign.center,),
                               ],
                             ),
                           ]

                           )
                           ),
                         ],
                       ),
                     ),

                         
                       ],
                     ),
                   );
                 },
               itemCount: companies==null?0: companies.length,

             );

          }
        ),

    );
  }
}
