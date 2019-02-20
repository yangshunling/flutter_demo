import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
        title: new Text('LoginActivity'),
      )),
    );
  }
}
