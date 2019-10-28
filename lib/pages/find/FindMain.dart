import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/PlaceholderSources.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/find/data/BannerResp.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/widget/NamedBox.dart';

class FindMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindMainState();
  }
}

class FindMainState extends State<FindMain> {
  Future _future;
  List<String> _bannerUrls = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getBannerInfo();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            child: FutureBuilder(
              future: _future,
              builder: (context, snap) {
                switch (snap.connectionState) {
                  case ConnectionState.none:
                  // TODO: Handle this case.
                    break;
                  case ConnectionState.waiting:
                    CircularProgressIndicator(
                      backgroundColor: colorBase,
                      strokeWidth: 2.0,
                    );
                    break;
                  case ConnectionState.active:
                    {
                      return CircularProgressIndicator(
                        backgroundColor: colorBase,
                        strokeWidth: 2.0,
                      );
                    }
                  case ConnectionState.done:
                    {
                      return banner();
                    }
                }
                return Container(
                  height: 0,
                  width: 0,
                );
              },
            ),
          ),
          Container(
            child: Text(
              "推荐歌单",
              style: BaseStyles.styleBaseTitle,
            ),
            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                NamedBox("http://p1.music.126.net/_wy_C1vExDgGXHddSznGcQ==/109951164453308919.jpg","NAME",1234),
                NamedBox("http://p1.music.126.net/_wy_C1vExDgGXHddSznGcQ==/109951164453308919.jpg","NAME",1234),
                NamedBox("http://p1.music.126.net/_wy_C1vExDgGXHddSznGcQ==/109951164453308919.jpg","NAME",1234),
              ],
            ),
          ),

          Container(
            height: 300.0,
          ),
          Container(
            height: 1300.0,
          )
        ],
      ),
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

  Future getBannerInfo() async {
    _bannerUrls.clear();
    Map<String, dynamic> bannerInfo = await NetUtil.init().get("banner?type=1");
    BannerResp resp = BannerResp.fromJson(bannerInfo);
    if (resp.code != 200) {
      _bannerUrls = BannerSource.bannerSources;
    } else {
      setState(() {
        for (int i = 0; i < resp.banners.length; i++) {
          debugPrint("url is ${resp.banners[i].pic}");
          _bannerUrls.add(resp.banners[i].pic);
        }
      });
    }
  }
}
