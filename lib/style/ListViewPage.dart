import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      /**
       * 配置主题
       */
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColorBrightness: Brightness.dark,
      ),
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('ListActivity'),
          ),
          body: new ListBody()),
    );
  }
}

class ListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          getContainer('Maps', Icons.map),
          getContainer('phone', Icons.phone),
          getContainer('Maps', Icons.map),
        ],
      ),
    );
  }


  Widget getContainer(String test, IconData icon) {
    return new Container(
      width: 160.0,
      child: new ListTile(
        title: new Text(test),
        leading: new Icon(icon),
        trailing: new Icon(icon),
        subtitle: new Text("我是subtitle"),
      ),
    );
  }
}
