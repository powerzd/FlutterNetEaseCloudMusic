import 'dart:math';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/login/LoginMainPage.dart';
import 'package:net_ease_cloud_music/pages/main/MainPage.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';

class SplashMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashMainState();
  }

}

class SplashMainState extends State<SplashMain>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser().then((value){
      if(value == 1){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainPage()),(route) => route == null);
      }else {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginMainPage()),(route) => route == null);
      }
    });
  }

  Future<int> initUser() async{
    await SpUtil.getInstance();
    int userId = SpUtil.getInt(LOGIN_ID);
    if(userId != 0 && userId.toString().length > 0){
      return 1;
    }else {
      return 0;
    }
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Image.asset("assets/image_login.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,)
    );
  }

}