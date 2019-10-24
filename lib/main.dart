import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/login/LoginMainPage.dart';
import 'package:net_ease_cloud_music/pages/login/LoginMobile.dart';
import 'package:net_ease_cloud_music/pages/login/model/LoginInfoModel.dart';
import 'package:net_ease_cloud_music/pages/main/MainPage.dart';
import 'package:net_ease_cloud_music/pages/splash/SplashMain.dart';
import 'package:provider/provider.dart';

void main(){
  final loginInfoModel = LoginInfoModel();
  runApp(
    Provider<String>.value(child: ChangeNotifierProvider.value(value: loginInfoModel,child: MyApp(),),)
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网易云音乐F',
      theme: ThemeData(
        primaryColor: colorBase,
      ),
      home:SplashMain(),
      routes: {
        "loginMain":(context) => LoginMainPage(),
        "mainPage":(context) => MainPage(),
        "loginMobile":(context) => LoginMobile(),
      },
    );
  }
}


