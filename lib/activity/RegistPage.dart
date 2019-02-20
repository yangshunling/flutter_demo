import 'package:flutter/material.dart';

class RegistAvticity extends StatelessWidget {
  final String param; // 用来储存传递过来的值
  RegistAvticity({Key key, this.param}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('RegistActivity'),
            ),
            body: new Center(
              child: new RaisedButton(
                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  //padding
                  child: new Text(
                    param,
                    style: new TextStyle(
                      fontSize: 18.0, //textsize
                      color: Colors.white, // textcolor
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  //shadow
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).pop('Flutter的路由回参');
                  }),
            )));
  }
}
