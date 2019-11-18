import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/mine/data/PlayListData.dart';
import 'package:net_ease_cloud_music/pages/mine/data/SubCountResp.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:net_ease_cloud_music/widget/ExpansionList.dart';
import 'package:net_ease_cloud_music/widget/HorizontalBox.dart';

class MineMainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MineMainPageState();
  }
}

class MineMainPageState extends State<MineMainPage> {
  Future _future;
  List<Playlist> playCreatedLists = [];
  List<Playlist> playCollectLists = [];
  String userId;
  SubCountResp _subCountResp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getMineInfo();
    userId = SpUtil.getString(ID);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
      future: _future,
      builder: (context, snap) {
        switch (snap.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
          case ConnectionState.done:
            {
              return Scrollbar(
                child: ListView(
                  children: <Widget>[
                    HorizontalBox(
                      icon: Icons.blur_circular,
                      title: "我的电台",
                      sub: "20",
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Divider(
                        height: 1.0,
                        color: colorUnselected,
                      ),
                    ),
                    HorizontalBox(
                      icon: Icons.collections_bookmark,
                      title: "我的收藏",
                      sub: "20",
                    ),
                    Container(
                      height: 5.0,
                      color: colorDivide,
                    ),
                    getCreatedMusic(),
                    getCollectedMusic(),
                  ],
                ),
              );
            }
        }
        return Container(
          height: 0,
          width: 0,
        );
      },
    ));
  }

  Widget getCreatedMusic() {
    return CloudExpansionTile(
      title: Text(
        "创建的歌单(${playCreatedLists.length})",
        style: BaseStyles.styleBaseTitle,
      ),
      leading: SizedBox(
        width: 72,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("新建歌单"),
                        content: TextField(
                          decoration: InputDecoration(hintText: "请输入歌单名称"),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("取消"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("确定"),
                            onPressed: () {},
                          )
                        ],
                      );
                    });
              },
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      children: playCreatedLists.length > 0
          ? playCreatedLists.map<Widget>((value) {
              return ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      image: DecorationImage(
                        image: NetworkImage(value.coverImgUrl),
                      )),
                ),
                title: Text(value.name),
                subtitle: Text("${value.trackCount}首"),
              );
            }).toList()
          : <Widget>[Container()],
    );
  }

  Widget getCollectedMusic() {
    return CloudExpansionTile(
      title: Text("收藏的歌单(${playCollectLists.length})",
          style: BaseStyles.styleBaseTitle),
      children: playCollectLists.length > 0
          ? playCollectLists.map<Widget>((value) {
              return ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      image: DecorationImage(
                        image: NetworkImage(value.coverImgUrl),
                      )),
                ),
                title: Text(value.name),
                subtitle: Text("${value.trackCount}首"),
              );
            }).toList()
          : <Widget>[Container()],
    );
  }

  Future getMineInfo() async {
    playCollectLists.clear();
    playCreatedLists.clear();
    List<MultipleRequestUtil> list = [];
    list.add(MultipleRequestUtil(RequestMethod.GET,
        baseUrl + "user/playlist?uid=${SpUtil.getString(ID)}"));
    list.add(MultipleRequestUtil(RequestMethod.GET, baseUrl + 'user/subcount'));
    List<Response> response = await NetUtil.init().multipleRequest(list);
    PlayListData playListData =
        PlayListData.fromJson(json.decode(response[0].toString()));
    _subCountResp = SubCountResp.fromJson(json.decode(response[1].toString()));
    for (int i = 0; i < playListData.playlist.length; i++) {
      (playListData.playlist[i].creator.userId.toString() == userId)
          ? playCreatedLists.add(playListData.playlist[i])
          : playCollectLists.add(playListData.playlist[i]);
    }
  }
}
