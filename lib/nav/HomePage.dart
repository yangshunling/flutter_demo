import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('HomePager'),
        ),
        body: new Center(
          child: Text(
              '这是Home页',
              style:new TextStyle(
                color: Colors.red,
                fontSize: 18,
              )),
        ),
      ),
    );
  }
}
