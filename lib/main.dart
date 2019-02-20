import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget {
  final String title;
  MainPage({this.title }): super();

  @override
  State<StatefulWidget> createState() {
    return new MainPageState(); // Return a state object
  }
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        children: _buildGridTiles(11),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: new EdgeInsets.all(5.0),
      )
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Stack> containers = new List<Stack>.generate(numberOfTiles, (int index) {
    final imageName = 'images/${index + 1}.jpg';
    return new Stack(
      alignment: Alignment(0.0, 0.0),
      children: <Widget>[
        new Container(
          child: new Image.asset(imageName, fit: BoxFit.cover, width: 150.0, height: 150.0,),
        ),
        new Container(
          padding: new EdgeInsets.all(5.0),
          decoration: new BoxDecoration(
            color: Colors.blue
          ),
          child: new Text('$index', style: new TextStyle(fontWeight: FontWeight.w600, color: Colors.white))
        )
      ],
    );
  });
  return containers;
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new MainPage(title: 'Girdview of images',)
    );
  }
}
