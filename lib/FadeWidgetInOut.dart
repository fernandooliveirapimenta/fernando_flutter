import 'package:flutter/material.dart';

void main() => runApp(FadeWidgetInOut());

class FadeWidgetInOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Opacity Demo';
    return MaterialApp(
      title: appTitle,
      home: Fade(title: appTitle),
    );
  }

}

class Fade extends StatefulWidget{

  final String title;

  Fade({Key key, this.title}) : super(key: key);

  @override
  _FadeState createState() => _FadeState();

}

class _FadeState extends State<Fade> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }

}