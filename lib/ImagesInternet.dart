import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: Image.network('https://blogs-images.forbes.com/kevinmurnane/files/2017/10/Blue-eye_-Coco-Parisienne_Pixabay.jpg'),
      ),
    );
  }
}