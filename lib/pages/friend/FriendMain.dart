import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/friend/FollowResp.dart';
import 'package:net_ease_cloud_music/pages/friend/FollowedResp.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:net_ease_cloud_music/widget/FutureBuilderBox.dart';
import 'package:net_ease_cloud_music/widget/LoadingProgress.dart';
import 'package:net_ease_cloud_music/widget/NoDataPage.dart';

class FriendMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FriendMainState();
  }

}

class _FriendMainState extends State<FriendMain> with SingleTickerProviderStateMixin{

  Future _future;
  TabController _controller;
  FollowResp _followResp;
  FollowedResp _followedResp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _future = getFollowInfo();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorWhite,
          iconTheme: IconThemeData(color: colorBlack),
          title: Text(
            "我的好友",
            style: BaseStyles.styleTitle,
          ),
          bottom: showTabBar(),
        ),
        body: FutureBuilder(
          future: _future,
          builder: (context, snap) {
            switch (snap.connectionState) {
              case ConnectionState.none:
                {
                  return NoDataPage();
                }
              case ConnectionState.waiting:
                {
                  return LoadingProgress();
                }
              case ConnectionState.active:
                {
                  return LoadingProgress();
                }
              case ConnectionState.done:
                {
                  return showTabBarView();
                }
            }
            return Container(
              height: 0,
              width: 0,
            );
          },
        ),
    );
  }

  Widget showTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          text: "关注",
        ),
        Tab(
          text: "粉丝",
        ),
        Tab(
          text: "添加好友",
        ),
      ],
      controller: _controller,
      indicatorColor: colorBase,
      labelColor: colorBlack,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  Widget showTabBarView(){
    return TabBarView(
        children: <Widget>[
          follow(),
          followed(),
          Text("1234"),
        ],
      controller: _controller,
    );
  }

  Widget follow(){
    return ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_followResp.follow[index].avatarUrl),
            ),
            title:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(_followResp.follow[index].nickname),
                SizedBox(width: 5,),
                Image.asset(_followResp.follow[index].gender == 1 ? "assets/icon_boy.png" : "assets/icon_girl.png",height: 10,width: 10,),
              ],
            ),
            subtitle: Text(_followResp.follow[index].signature,maxLines: 1,overflow: TextOverflow.ellipsis,),
          );
        },
      itemCount: _followResp.follow.length,
    );
  }

  Widget followed(){
    return ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(_followedResp.followeds[index].avatarUrl),
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(_followedResp.followeds[index].nickname),
                SizedBox(width: 5,),
                Image.asset(_followedResp.followeds[index].gender == 1 ? "assets/icon_boy.png" : "assets/icon_girl.png",height: 10,width: 10,),
              ],
            ),
            subtitle: Text(_followedResp.followeds[index].signature,maxLines: 1,overflow: TextOverflow.ellipsis,),
            trailing: Container(
              alignment: Alignment.center,
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: colorUnselected)
              ),
              child: Text(!_followedResp.followeds[index].followed ? "已关注" : "未关注",style: TextStyle(fontSize: 12.0,color: colorUnselected),),
            ),
          );
        },
      itemCount: _followedResp.followeds.length,
    );
  }

  

  Future getFollowInfo() async{
    List<MultipleRequestUtil> list = [];
    list.add(MultipleRequestUtil(RequestMethod.GET,"${baseUrl}user/follows?uid=${SpUtil.getInt(LOGIN_ID)}"));
    list.add(MultipleRequestUtil(RequestMethod.GET,"${baseUrl}user/followeds?uid=${SpUtil.getInt(LOGIN_ID)}"));
    List<Response> responseLists = await NetUtil.init().multipleRequest(list);
    print(responseLists.length);
    _followResp = FollowResp.fromJson(json.decode(responseLists[0].toString()));
    _followedResp = FollowedResp.fromJson(json.decode(responseLists[1].toString()));
    print(_followResp.code);
  }
}