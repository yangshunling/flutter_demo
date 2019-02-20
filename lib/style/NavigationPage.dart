import 'package:flutter/material.dart';
import 'package:flutter_demo/nav/HomePage.dart';
import 'package:flutter_demo/nav/ListPage.dart';
import 'package:flutter_demo/nav/MePage.dart';

class NavigetionPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new NavBody();
  }
}

class NavBody extends State<NavigetionPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
          controller: controller,
          children: <Widget>[new HomePage(), new ListPage(), new MePage()]),
      bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(
                text: "首页",
                icon: new Icon(Icons.home),
              ),
              new Tab(
                text: "列表",
                icon: new Icon(Icons.list),
              ),
              new Tab(
                text: "我的",
                icon: new Icon(Icons.my_location),
              )
            ],
          )),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
