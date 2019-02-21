import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackbar() {
    final snackbar = new SnackBar(
      content: new Text('This is a fucking snackbar'),
      backgroundColor: Colors.green,
      duration: new Duration(seconds: 1),
    );
    _scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text('Snackbar Example'),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.info), onPressed: _showSnackbar)
          ],
        ),
      )
    );
  }
}
