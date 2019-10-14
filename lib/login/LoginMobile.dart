import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class LoginMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginMobileState();
  }
}

class LoginMobileState extends State<LoginMobile> {

  var controller  = TextEditingController();
  var controllerPassward = TextEditingController();
  String _mobileData = "";
  String _passwardData = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: colorBlack,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: colorWhite,
        title: Text(
          "手机号登录",
          style: TextStyle(color: colorBlack),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              maxLength: 11,
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "手机号",
                  prefixText: "+ 86 ",
                  hintText: "请输入手机号码",
                  suffixIcon: (_mobileData.length != 0) ? IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: (){
                      setState(() {
                        _mobileData = "";
                        controller.clear();
                      });
                    },
                  ) : null
              ),
              onChanged: (value) {
                setState(() {
                  _mobileData = value;
                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              controller: controllerPassward,
              decoration: InputDecoration(
                  labelText: "密码",
                  prefixText: " ",
                  hintText: "请输入密码",
                  suffixIcon: (_passwardData.length != 0) ? IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: (){
                      setState(() {
                        _passwardData = "";
                        controllerPassward.clear();
                      });
                    },
                  ) : null
              ),
              onChanged: (value){
                setState(() {
                  _passwardData = value;
                });
              },
              obscureText: true,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: double.infinity,
            height: 48.0,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: RaisedButton(
              color: colorBase,
              child: Text("登录", style: TextStyle(color: colorWhite),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              onPressed: () {
                login().then((value){
                  debugPrint(value.toString());
                }).catchError((error){

                });
              },
            ),
          )
        ],
      ),
    );
  }

  Future login() async{
    Dio dio = new Dio();
    debugPrint("phone is $_mobileData");
    FormData formData = FormData.fromMap({
      "phone":_mobileData,
      "password":_passwardData
    });
    var response = await dio.post(baseUrl + "login/cellphone",data:formData);
    return response;
  }
}
