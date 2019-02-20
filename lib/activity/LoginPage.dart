import 'package:flutter/material.dart';
import 'package:flutter_demo/style/ListViewPage.dart';
import 'package:flutter_demo/style/NavigationPage.dart';
import 'package:flutter_demo/activity/RegistPage.dart';
import 'package:flutter_demo/utils/toast.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      /**
       * 配置主题
       */
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blueGrey,
        primaryColorBrightness: Brightness.dark,
      ),
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('LoginActivity'),
          ),
          body: new Body()),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Paint bg = Paint();
    bg.color = Color(0xFF3344FF);
    return new Column(
      children: <Widget>[
        new Container(
            padding: EdgeInsets.all(20),
            color: Colors.red,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: new Text(
              '基础样式组件',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
              ),
            )),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "Toast",
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
                  new Toast().showToast(context, "我是自定义toast");
                }),
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "Notifycation",
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
                  new Toast()
                      .showNotifyWithBg(context, "我是自定义通知", Colors.green);
                }),
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "网络请求",
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
                  getHttp(context);
                }),
          ],
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "网络请求",
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
                  getHttp(context);
                }),
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "底部导航栏",
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
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (_) {
                    return new NavigetionPage();
                  }));
                }),
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "列表",
                  style: new TextStyle(
                    fontSize: 16.0, //textsize
                    color: Colors.white, // textcolor
                  ),
                ),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                //shadow
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (_) {
                    return new ListViewPage();
                  }));
                }),
          ],
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new RaisedButton(
                padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: new Text(
                  "跳转",
                  style: new TextStyle(
                    fontSize: 16.0, //textsize
                    color: Colors.white, // textcolor
                  ),
                ),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                //shadow
                splashColor: Colors.blueGrey,
                onPressed: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (_) {
                    return new RegistAvticity(param: 'Flutter的路由传参');
                  })).then((onValue) {
                    new Toast().showToast(context, onValue);
                  });
                }),
          ],
        )
      ],
    );
  }

  void getHttp(BuildContext context) async {
    try {
      Response response;
      response = await Dio().get("http://www.baidu.com");
      new Toast().showNotify(context, response.toString());
    } catch (e) {
      return print(e);
    }
  }
}
