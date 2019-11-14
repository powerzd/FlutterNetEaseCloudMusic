import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:net_ease_cloud_music/utils/StringUtils.dart';
import 'package:net_ease_cloud_music/widget/LoadingProgress.dart';
import 'package:net_ease_cloud_music/widget/NoDataPage.dart';

class CloudMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CloudMainState();
  }
}

class CloudMainState extends State<CloudMain>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _controller;
  Future _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          showTabBar(),
          showTabBarView(),
        ],
      ),
    );
  }

  Widget bodyFuture() {
    return FutureBuilder(
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
              return Column(
                children: <Widget>[
                  showTabBar(),
                  showTabBarView(),
                ],
              );
            }
        }
        return Container(
          height: 0,
          width: 0,
        );
      },
    );
  }

  Widget showTabBar() {
    return Container(
      height: 36,
      child: TabBar(
        tabs: <Widget>[
          Tab(
            child: Text("广场"),
          ),
          Tab(
            child: Text("动态"),
          ),
        ],
        controller: _controller,
        unselectedLabelColor: colorUnselected,
        labelColor: colorBase,
        indicatorColor: colorBase,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }

  Widget showTabBarView() {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          square(),
          Text("2"),
        ],
        controller: _controller,
      ),
    );
  }

  Widget square() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 100.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [colorSquareBegin, colorSquareEnd],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "云村热评墙",
                            style: BaseStyles.styleWhiteCommonText,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: colorWhite,
                          )
                        ],
                      ),
                      Text(
                        "${SpUtil.getString("nickname")},今天最戳心评论,你看过几条",
                        style: BaseStyles.styleWhiteSize14,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "${StringUtils.revertMonth(DateTime.now().month)}",
                        style: BaseStyles.styleWhiteCommonText,
                      ),
                      Text(
                        "${DateTime.now().day}",
                        style: BaseStyles.styleWhiteCommonText,
                      )
                    ],
                  )
                ],
              ),
            ),
            onTap: (){
              Navigator.pushNamed(context, "hotComment");
            },
          ),
        ],
      ),
    );
  }

  getInfo() {
    List<MultipleRequestUtil> list = [];
    list.add(MultipleRequestUtil(RequestMethod.GET, baseUrl + ""));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
