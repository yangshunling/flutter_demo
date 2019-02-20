import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('MePager'),
        ),
        body: new Center(
          child: Text(
            '这是Me页',
            style:new TextStyle(
              color: Colors.red,
              fontSize: 18,
            )),
        ),
      ),
    );
  }
}
