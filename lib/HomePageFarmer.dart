import 'package:flutter/material.dart';
import 'dart:convert';
class HomePageFarmersbuy extends StatefulWidget {
  List data;
  @override
  _HomePageFarmersbuyState createState() => _HomePageFarmersbuyState();
}

class _HomePageFarmersbuyState extends State<HomePageFarmersbuy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('load_json/companies.json'),
          builder: (context,snapshot){
             var companies= json.decode(snapshot.data.toString());
             return new ListView.builder(
                 itemBuilder: (BuildContext context,int index){
                   return new Card(
                     child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[

                     new ListTile(onTap: null,

                       leading: new CircleAvatar(
                         foregroundColor: Theme.of(context).primaryColor,
                         backgroundColor: Colors.grey,
                         backgroundImage: new NetworkImage('companies[index].avatarUrl'),

                       ),
                       title: new Row(
                         children: <Widget>[
                            new Text(
                             companies[index]['name'],
                             style: new TextStyle(fontWeight: FontWeight.bold),
                              ),

//                            new Image.asset('assets/5star.png')
                         ],
                       ),
                       subtitle: Row(
                         children: <Widget>[
                            Expanded(
                            flex: 6,
                            child: new Column( crossAxisAlignment: CrossAxisAlignment.start,

                                children:<Widget>[

                                  Text(companies[index]['products'],
                               style: new TextStyle(color: Colors.grey, fontSize: 16.0),
                                    overflow: TextOverflow.ellipsis,maxLines: 1,
                            ),
                            ]
                            ),
                            ),
//                           Expanded(
//                             flex: 4,
//                           child:new Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//
//                               children:<Widget>[
//                             Image.asset('assets/5star.png',
//                                 fit: BoxFit.fitHeight,
//                                 height: 80.0,
////                                 width:(int.parse(companies[index]['review'])/10)*256,
//                             ),
//                           ]
//
//                           )
//                           ),
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
      )
    );
  }
}
