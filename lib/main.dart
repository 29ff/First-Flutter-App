import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: new Text('Programming tutorials channel', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0)),
              ),
              new Container(
                padding: const EdgeInsets.only(right: 8.0),
                child: new Text('This channel contains tutorial video in Flutter, React Native, React.js, Vue.js and so on', style: new TextStyle(fontSize: 11.0))
              ),
            ],
          )),
          new Container(
            padding:EdgeInsets.only(right: 2.0),
            child: new Icon(Icons.favorite, color: Colors.red, size: 19.0),
          ),
          new Text('100', style: new TextStyle(fontSize: 12.0))
        ],
      ),
    );


    Widget buildButton(IconData buttonIcon, String buttonText) {
      final Color mainIconColor = Colors.blue;
      return new Container(
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(bottom: 8.0),
              child: new Icon(buttonIcon, color: mainIconColor)
            ),
            new Text(buttonText, style: new TextStyle(color: mainIconColor, fontWeight: FontWeight.w600)),
          ],
        ),
      );
    }

    Widget fourButtonSection = new Container(
      padding: EdgeInsets.all(10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButton(Icons.home, 'Home'),
          buildButton(Icons.arrow_back, 'Back'),
          buildButton(Icons.arrow_forward, 'Next'),
          buildButton(Icons.share, 'Share'),
        ],
      ),
    );

    Widget theFuckingLongText = new Container(
      padding:EdgeInsets.all(10.0),
      child: new Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae varius mauris. Nunc dapibus tristique velit ac cursus. In tristique tellus eros, eget congue lacus porttitor sed. Pellentesque erat magna, semper ut finibus in, rutrum nec lacus. Sed gravida vehicula blandit. Nam efficitur felis et metus eleifend, ac feugiat sem accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam semper purus dolor, at pulvinar magna ullamcorper eu. Ut tristique accumsan risus at porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae varius mauris. Nunc dapibus tristique velit ac cursus. In tristique tellus eros, eget congue lacus porttitor sed. Pellentesque erat magna, semper ut finibus in, rutrum nec lacus. Sed gravida vehicula blandit. Nam efficitur felis et metus eleifend, ac feugiat sem accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam semper purus dolor, at pulvinar magna ullamcorper eu. Ut tristique accumsan risus at porttitor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae varius mauris. Nunc dapibus tristique velit ac cursus. In tristique tellus eros, eget congue lacus porttitor sed. Pellentesque erat magna, semper ut finibus in, rutrum nec lacus. Sed gravida vehicula blandit. Nam efficitur felis et metus eleifend, ac feugiat sem accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam semper purus dolor, at pulvinar magna ullamcorper eu. Ut tristique accumsan risus at porttitor.')
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App')
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/image.png',
              fit: BoxFit.cover
            ),
            titleSection,
            fourButtonSection,
            theFuckingLongText
          ],
        )
      )
    );
  }
}
