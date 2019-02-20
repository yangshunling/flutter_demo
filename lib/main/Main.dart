import 'package:flutter/material.dart';
import 'package:flutter_demo/activity/LoginPage.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      /**
       * 去除debug标签
       */
      debugShowCheckedModeBanner: false,
      /**
       * 启动主页面
       */
      home: LoginPage(),
    );
  }
}
