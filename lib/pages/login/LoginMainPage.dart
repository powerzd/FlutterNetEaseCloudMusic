import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/login/LoginMobile.dart';

class LoginMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginMainPageState();
  }
}

class LoginMainPageState extends State<LoginMainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image_login.png"),
          fit: BoxFit.fill,
        )),
        alignment: Alignment.bottomCenter,
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 200.0,
                  child: FlatButton(
                    color: colorWhite,
                    child: Text(
                      "手机号登录",
                      style: TextStyle(color: colorBase),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginMobile()),
                          (route) => route == null);
                      //Navigator.pushNamed(context, "loginMobile");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                ),

                Container(
                  width: 200.0,
                  child: FlatButton(
                    color: colorWhite,
                    child: Text(
                      "手机号登录",
                      style: TextStyle(color: colorBase),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginMobile()),
                              (route) => route == null);
                      //Navigator.pushNamed(context, "loginMobile");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                ),

                Text(
                  "此app仅供学习和参考，不可用于任何商业用途",
                  style: TextStyle(color: colorWhite, fontSize: 12.0),
                ),
              ],
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 120)),
      ),
    );
  }
}
