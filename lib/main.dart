import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            post[index].imageUrl,
            width: 150,
            fit: BoxFit.fitWidth,
          ),
          Expanded(child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  " 书名：${post[index].titlt}",style: TextStyle(color: Colors.deepOrange),
                ),
                Text(" 作者：${post[index].auther}"),
                Text(" 内容：${post[index].content}"),
              ]) ,) ,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: post.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
