import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic List',
      home: Scaffold(
        appBar: AppBar(title: Text('List'), ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Phone'),
            )
          ],
        ),
      ),
    );
  }
}
