import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: ListViewDemo(),
      ),
    );
  }
}

