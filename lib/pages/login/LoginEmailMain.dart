import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/login/LoginRequest.dart';
import 'package:net_ease_cloud_music/utils/CloudRoundButton.dart';
import 'package:net_ease_cloud_music/widget/CloudLoadingProgress.dart';

class LoginEmailMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginEmailMain();
  }
}

class _LoginEmailMain extends State<LoginEmailMain> {
  String _emailAccount = "";
  String _password = "";
  bool _offstage = true;
  FocusNode _accountNode = FocusNode();
  FocusNode _passwordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("邮箱登录"),
        ),
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Offstage(
                offstage: _offstage,
                child: CloudLoadingProgress(),
              ),
            ),
            Column(
              children: <Widget>[
                emailAccount(),
                emailPassword(),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: CloudRoundButton(
                    width: double.infinity,
                    title: "登录",
                    colorBg: colorBase,
                    textColor: colorWhite,
                    onTap: () {
                      setState(() {
                        emailLogin();
                      });
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget emailAccount() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: TextField(
        focusNode: _accountNode,
        keyboardType: TextInputType.emailAddress,
        onChanged: (String inputValue) {
          setState(() {
            _emailAccount = inputValue;
          });
        },
        decoration: InputDecoration(
          labelText: "邮箱",
          helperText: "请输入邮箱账号",
        ),
      ),
    );
  }

  Widget emailPassword() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: TextField(
        focusNode: _passwordNode,
        onChanged: (String inputValue) {
          setState(() {
            _password = inputValue;
          });
        },
        decoration: InputDecoration(
          labelText: "密码",
          helperText: "请输入邮箱密码",
        ),
        obscureText: true,
      ),
    );
  }

  dismissNode() {
    _accountNode.unfocus();
    _passwordNode.unfocus();
  }

  bool checkLogin() {
    if (_emailAccount == null || _emailAccount.length == 0) {
      Fluttertoast.showToast(msg: "账号不能为空");
      return false;
    }

    if (_password == null || _password.length == 0) {
      Fluttertoast.showToast(msg: "密码不能为空");
      return false;
    }

    return true;
  }

  emailLogin() {
    if (!checkLogin()) {
      return;
    }
    _offstage = false;
    dismissNode();
    print("account is $_emailAccount and pwd is $_password");
    Map<String, dynamic> loginMap = {
      "email": _emailAccount,
      "password": _password
    };
    LoginRequest().login("login",loginMap).then((resp) {
      setState(() {
        _offstage = true;
      });
      if (resp.code == requestSuccess) {
        Fluttertoast.showToast(msg: "登录成功");
        Navigator.pushNamedAndRemoveUntil(
            context, "mainPage", (route) => route == null);
      } else {
        Fluttertoast.showToast(msg: resp.message);
      }
    });
  }
}
