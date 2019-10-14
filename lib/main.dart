import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseFunction.dart';
import 'package:net_ease_cloud_music/login/LoginMobile.dart';

import 'login/LoginMainPage.dart';
import 'main/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: colorBase,
      ),
      home: hasLogin() ? MainPage() : LoginMainPage(),
      routes: {
        "loginMobile":(context) => LoginMobile(),
      },
    );
  }
}


