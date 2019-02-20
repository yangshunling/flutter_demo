import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListPager'),
        ),
        body: new Center(
          child: Text(
              '这是List页',
              style:new TextStyle(
                color: Colors.red,
                fontSize: 18,
              )),
        ),
      ),
    );
  }
}