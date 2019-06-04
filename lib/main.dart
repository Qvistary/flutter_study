import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300.0,
      height: 100.0,
      child: Text(
        "data",
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40.0, color: Colors.blue),
      ),
      decoration: BoxDecoration(color: Colors.orange,),
    ));
  }
}
