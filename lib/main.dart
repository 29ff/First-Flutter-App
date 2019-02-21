import 'package:flutter/material.dart';
import 'home.dart';
import 'chat.dart';
import 'group.dart';
import 'cloud.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabsController = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('These are tabs'),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home), text: 'Home' ),
              new Tab(icon: new Icon(Icons.group), text: 'Group' ),
              new Tab(icon: new Icon(Icons.chat_bubble), text: 'Message' ),
              new Tab(icon: new Icon(Icons.cloud), text: 'Cloud' )
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Home(),
            new Group(),
            new Chat(),
            new Cloud()
          ],
        ),
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      home: tabsController
    );
  }
}
