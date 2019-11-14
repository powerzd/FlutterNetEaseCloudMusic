import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/message/MessgaePrivateLetterResp.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/widget/FutureBuilderBox.dart';

class MessageMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MessageMainState();
  }
}

class _MessageMainState extends State<MessageMain> with SingleTickerProviderStateMixin{

  TabController _controller;
  Future _future;
  MessagePrivateLetterResp _letterResp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    getMessages();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        iconTheme: IconThemeData(
          color: colorBlack
        ),
        title: Text("我的消息",style: BaseStyles.styleTitle,),
        bottom: showTabBar(),
      ),
      body: FutureBuilderBox(future: _future, widget: showTabBarView()),
    );
  }

  Widget showTabBar(){
    return TabBar(
      tabs: <Widget>[
        Tab(text: "私信",),
        Tab(text: "评论",),
        Tab(text: "@我",),
        Tab(text: "通知",),
      ],
      controller: _controller,
      indicatorColor: colorBase,
      labelColor: colorBlack,
    );
  }

  Widget showTabBarView(){
    return TabBarView(
      children: <Widget>[
        //Text("1234"),
        showPrivateLetter(),
        Text("1234"),
        Text("1234"),
        Text("1234"),
      ],
      controller:_controller,
    );
  }

  Widget showPrivateLetter(){
    return ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network(_letterResp.msgs[index].fromUser.avatarUrl),
          );
        }
    );
  }
  
  Future getMessages() async{

    Map<String,dynamic> messageJson = await NetUtil.init().get("msg/private?limit=3");
    _letterResp = MessagePrivateLetterResp.fromJson(messageJson);
//    List<MultipleRequestUtil> lists = [];
//    lists.add(MultipleRequestUtil(RequestMethod.GET,baseUrl + "msg/private?limit=3"));
//    List<Response> responseLists = await NetUtil.init().multipleRequest(lists);
//    print(responseLists.length);
//    setState(() {
//      _letterResp = MessagePrivateLetterResp.fromJson(json.decode(responseLists[0].toString()));
//    });
  }
}