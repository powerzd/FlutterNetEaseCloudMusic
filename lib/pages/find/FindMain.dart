import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/find/data/BannerResp.dart';
import 'package:net_ease_cloud_music/pages/find/data/NewDiskResp.dart';
import 'package:net_ease_cloud_music/pages/find/data/NewDiskResp.dart' as prefix0;
import 'package:net_ease_cloud_music/pages/find/data/NewMusicResp.dart';
import 'package:net_ease_cloud_music/pages/find/data/PersonalizedResp.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:net_ease_cloud_music/widget/LoadingProgress.dart';
import 'package:net_ease_cloud_music/widget/NamedBox.dart';
import 'package:net_ease_cloud_music/widget/NoDataPage.dart';

class FindMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindMainState();
  }
}

class FindMainState extends State<FindMain> with TickerProviderStateMixin {
  Future _future;
  List<String> _bannerUrls = [];
  List<Result> results = [];
  List<prefix0.Album> albums = [];
  List<Data> musicData = [];
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getFindMainInfo();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    banner(),
                    recommendColumn(),
                    newDiskMusic(),
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
    );
  }

  Widget banner() {
    return Container(
      height: 150.0,
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Swiper(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  image: DecorationImage(
                      image: NetworkImage(_bannerUrls[index]),
                      fit: BoxFit.fill)),
            ),
          );
        },
        itemCount: _bannerUrls.length,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(size: 5.0, activeSize: 5.0)),
      ),
    );
  }

  Widget recommendColumn() {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("推荐歌单", style: BaseStyles.styleBaseTitle),
          SizedBox(
            height: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: results.length > 6
                ? results.sublist(0, 3).map<Widget>((value) {
                    return NamedBox(value.picUrl, value.name, value.playCount,maxLines: 2,);
                  }).toList()
                : <Widget>[Container()],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: results.length > 6
                ? results.sublist(4, 7).map<Widget>((value) {
                    return NamedBox(value.picUrl, value.name, value.playCount,maxLines: 2);
                  }).toList()
                : <Widget>[Container()],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ],
      ),
    );
  }

  Widget newDiskMusic() {
    return  Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              TabBar(
                tabs: <Widget>[
                  Tab(
                    child: Text("新碟"),
                  ),
                  Tab(
                    child: Text("新歌"),
                  )
                ],
                onTap: (index) {},
                labelColor: colorBlack,
                indicatorColor: colorBase,
                isScrollable: true,
                indicatorWeight: 1.0,
                indicatorSize:TabBarIndicatorSize.label,
                labelStyle:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                unselectedLabelColor: colorUnselected,
                unselectedLabelStyle: TextStyle(fontSize: 14.0),
                controller: _tabController,
              )
            ],
          ),
          Container(
            height: 135.0,
            margin: EdgeInsets.fromLTRB(15, 5, 15, 30),
            child: TabBarView(
              children: <Widget>[
                Row(
                  children: albums.length > 0
                      ? albums.map<Widget>((value) {
                          return NamedBox(
                              value.picUrl, value.name, 0,maxLines: 1,);
                        }).toList()
                      : <Widget>[Container()],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                 Container(
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: musicData.length > 0
                         ? musicData.sublist(8, 11).map<Widget>((value) {
                       return NamedBox(
                           value.album.picUrl, value.name, 0,maxLines: 1);
                     }).toList()
                         : <Widget>[Container()],
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   ),
                 )

              ],
              controller: _tabController,
            ),
          ),
        ],
    );
  }

  Future getFindMainInfo() async {
    _bannerUrls.clear();
    List<MultipleRequestUtil> requests = [];
    requests.add(MultipleRequestUtil(RequestMethod.GET, baseUrl + "banner?type=1"));
    requests.add(MultipleRequestUtil(RequestMethod.GET, baseUrl + "personalized"));
    requests.add(MultipleRequestUtil(RequestMethod.GET, baseUrl + "top/album?offset=0&limit=3"));
    requests.add(MultipleRequestUtil(RequestMethod.GET,baseUrl + "top/song?type=0"));
    List<Response> response = await NetUtil.init().multipleRequest(requests);
    BannerResp bannerResp = BannerResp.fromJson(json.decode(response[0].toString()));
    PersonalizedResp personalizedResp = PersonalizedResp.fromJson(json.decode(response[1].toString()));
    NewDiskResp newDiskResp = NewDiskResp.fromJson(json.decode(response[2].toString()));
    NewMusicResp newMusicResp = NewMusicResp.fromJson(json.decode(response[3].toString()));

    setState(() {
      for (int i = 0; i < bannerResp.banners.length; i++) {
        debugPrint("url is ${bannerResp.banners[i].pic}");
        _bannerUrls.add(bannerResp.banners[i].pic);
      }
      results = personalizedResp.result;
      albums = newDiskResp.albums;
      musicData = newMusicResp.data;
    });
  }
}
