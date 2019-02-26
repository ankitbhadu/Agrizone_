import 'package:flutter/material.dart';
class dapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("NO_ONE"),
              accountEmail: new Text("no_name1221@gmail.com"),
              decoration: BoxDecoration(
                  color: Colors.redAccent
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.limeAccent,
                child: new Text("F"),
              ),



              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.limeAccent,
                  child: new Text("S"),
                )
              ],
            ),

            new Divider(),
            new ListTile(
              title: new Text("Contacts Us"),
              trailing: new Icon(Icons.contacts),
              onTap: null,
            ),

            new ListTile(
              title: new Text("Log Out"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: null
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons
                  .close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}