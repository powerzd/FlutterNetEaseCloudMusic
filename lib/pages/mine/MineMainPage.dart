import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/mine/data/PlayListData.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';

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
                    ExpansionTile(
                      title: Text(
                        "创建的歌单(${playCreatedLists.length})",
                        style: BaseStyles.styleBaseTitle,
                      ),
                      children: playCreatedLists.length > 0
                          ? playCreatedLists.map<Widget>((value) {
                              return ListTile(
                                leading: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      image: DecorationImage(
                                        image: NetworkImage(value.coverImgUrl),
                                      )),
                                ),
                                title: Text(value.name),
                                subtitle: Text("${value.trackCount}首"),
                              );
                            }).toList()
                          : <Widget>[Container()],
                    ),
                    ExpansionTile(
                      title: Text("收藏的歌单(${playCollectLists.length})", style: BaseStyles.styleBaseTitle),
                      children: playCollectLists.length > 0
                          ? playCollectLists.map<Widget>((value) {
                              return ListTile(
                                leading: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      image: DecorationImage(
                                        image: NetworkImage(value.coverImgUrl),
                                      )),
                                ),
                                title: Text(value.name),
                                subtitle: Text("${value.trackCount}首"),
                              );
                            }).toList()
                          : <Widget>[Container()],
                    ),
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

  Future getMineInfo() async {
    playCollectLists.clear();
    playCreatedLists.clear();
    List<MultipleRequestUtil> list = [];
    debugPrint("playLists is ${SpUtil.getString(ID)}");
    list.add(MultipleRequestUtil(RequestMethod.GET,
        baseUrl + "user/playlist?uid=${SpUtil.getString(ID)}"));
    List<Response> response = await NetUtil.init().multipleRequest(list);
    PlayListData playListData =
        PlayListData.fromJson(json.decode(response[0].toString()));
    setState(() {
      for (int i = 0; i < playListData.playlist.length; i++) {
        (playListData.playlist[i].creator.userId.toString() == userId)
            ? playCreatedLists.add(playListData.playlist[i])
            : playCollectLists.add(playListData.playlist[i]);
      }
    });
  }
}
