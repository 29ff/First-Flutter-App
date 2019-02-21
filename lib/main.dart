import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.account_box, color: Colors.blue),
            title: new Text('Nguyen Ba Hung', style: new TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('Software Developer'),
          ),
          new Divider(color: Colors.blue, indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.mail, color: Colors.blue),
            title: new Text('nbhung1809@gmail.com'),
          ),
          new ListTile(
            leading: new Icon(Icons.phone, color: Colors.blue),
            title: new Text('0866118964'),
          )
        ],
      ),
    );

    final sizeBox = new Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 220.0,
        child: card,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('The fucking card'),
        ),
        body: sizeBox,
      )
    );
  }
}
