import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/user/UserDetailResp.dart';
import 'package:net_ease_cloud_music/pages/user/UserDynamicInfoResp.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:net_ease_cloud_music/widget/LoadingProgress.dart';
import 'package:net_ease_cloud_music/widget/NoDataPage.dart';

class UserDetailMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserDetailMain();
  }
}

class _UserDetailMain extends State<UserDetailMain>
    with SingleTickerProviderStateMixin {
  Future _future;
  UserDetailResp _detailResp;
  UserDynamicInfoResp _dynamicInfoResp;
  final double _appBarHeight = 256.0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getUserDetailInfo();
    _tabController = TabController(length: 2, vsync: this);
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
                return mainBody();
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

  Widget mainBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: _appBarHeight,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(_detailResp.profile.nickname),
              background: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: _appBarHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(_detailResp.profile.backgroundUrl),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 80, 10, 0),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(_detailResp.profile.avatarUrl),
                        radius: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "关注 ${_detailResp.profile.follows}  |  粉丝 ${_detailResp.profile.followeds}",
                      style: BaseStyles.styleWhiteSize14,
                    )
                  ],
                ),
              )),
        ),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("主页"),
                ),
                Tab(
                  child: Text("动态 (${_detailResp.profile.eventCount})"),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: colorBase,
              labelColor: colorBase,
              unselectedLabelColor: colorBlack,
            ),

//            SingleChildScrollView(
//              height: double.infinity,
//              child: tabBarView(),
//            )
            Container(
              height: MediaQuery.of(context).size.height,
              child: tabBarView(),
            )
          ]),
        )
      ],
    );
  }

  Widget tabBarView() {
    return TabBarView(
      children: <Widget>[
        //Text("1344"),
        infoList(),
        //Text("1344"),
        dynamicList(),
      ],
      controller: _tabController,
    );
  }

  Widget infoList() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              "assets/icon_rank.png",
              height: 30,
              width: 30,
            ),
            title: Text("听歌排行"),
            subtitle: Text("累计听歌${_detailResp.listenSongs}首"),
          ),
        ],
      ),
    );
  }

  Widget dynamicList() {
    return SingleChildScrollView(
      child:
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("12344"),
            );
          },
          itemCount: _dynamicInfoResp.size,
          physics: NeverScrollableScrollPhysics(),
        ),
    );
  }

  Future getUserDetailInfo() async {
    List<MultipleRequestUtil> requestLists = [];
    requestLists.add(MultipleRequestUtil(RequestMethod.GET,
        "${baseUrl}user/detail?uid=${SpUtil.getInt(LOGIN_ID)}"));
    requestLists.add(MultipleRequestUtil(RequestMethod.GET,
        "${baseUrl}user/event?uid=${SpUtil.getInt(LOGIN_ID)}"));
    List<Response> responseList =
        await NetUtil.init().multipleRequest(requestLists);
    _detailResp =
        UserDetailResp.fromJson(json.decode(responseList[0].toString()));
    _dynamicInfoResp =
        UserDynamicInfoResp.fromJson(json.decode(responseList[1].toString()));
  }
}
