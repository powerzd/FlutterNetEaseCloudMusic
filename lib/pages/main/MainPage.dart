import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/cloud/CloudMain.dart';
import 'package:net_ease_cloud_music/pages/drawer/DrawerMainPage.dart';
import 'package:net_ease_cloud_music/pages/find/FindMain.dart';
import 'package:net_ease_cloud_music/pages/mine/MineMainPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      _onTabChanged();
    });
  }

  _onTabChanged() {
    if (_tabController.index.toDouble() == _tabController.animation.value) {
      //Fluttertoast.showToast(msg: _tabController.index.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: colorText),
        title: topTabBar(),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: TabBarView(
        children: <Widget>[
          Container(
            child:MineMainPage(),
          ),
          Container(
           child: FindMain(),
          ),
          Container(
            child: CloudMain(),
          ),
        ],
        controller: _tabController,
        dragStartBehavior: DragStartBehavior.down,
      ),
      drawer: setDraw(),
    );
  }

  Widget setDraw() {
    return Drawer(
      child:DrawerMainPage(),
    );
  }

  Widget topTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text("我的"),
            alignment: Alignment.center,
          ),
        ),
        Tab(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text("发现"),
            alignment: Alignment.center,
          ),
        ),
        Tab(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Text("云村"),
            alignment: Alignment.center,
          ),
        )
      ],
      controller: _tabController,
      labelColor: colorBlack,
      indicatorColor: Colors.transparent,
      isScrollable: true,
      indicatorWeight: 3.0,
      labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      unselectedLabelColor: colorUnselected,
      unselectedLabelStyle: TextStyle(fontSize: 14.0),
      onTap: (index) {
      },
    );
  }
}
