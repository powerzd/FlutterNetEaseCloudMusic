import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:net_ease_cloud_music/base/PlaceholderSources.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/find/data/BannerResp.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';

class FindMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindMainState();
  }
}

class FindMainState extends State<FindMain> {

  Future _future;
  int _length;
  List<String> _bannerUrls = BannerSource.bannerSources;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getBannerInfo();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: FutureBuilder(
          future: _future,
          builder: (context,snap){
            switch(snap.connectionState){
              case ConnectionState.none:
                // TODO: Handle this case.
                break;
              case ConnectionState.waiting:
                CircularProgressIndicator(
                  backgroundColor: colorBase,
                  strokeWidth: 2.0,
                );
                break;
              case ConnectionState.active:{
                return CircularProgressIndicator(
                  backgroundColor: colorBase,
                  strokeWidth: 2.0,
                );
              }
              case ConnectionState.done:{
                return banner();
              }
            }
            return Container(height: 0,width: 0,);
          },
        )
    );
  }

  Widget banner(){
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
          builder: DotSwiperPaginationBuilder(
            size: 5.0,
            activeSize: 5.0
          )
        ),
      ),
    );
  }

  Future getBannerInfo() async{
    _bannerUrls.clear();
    Map<String,dynamic> bannerInfo = await NetUtil.init().get("banner?type=1");
    BannerResp resp = BannerResp.fromJson(bannerInfo);
    if(resp.code != 200){

    }else {
      setState(() {
        for(int i = 0; i < _length; i++){
          debugPrint("url is ${resp.banners[i].pic}");
          _bannerUrls.add(resp.banners[i].pic);
        }
      });
    }
  }
}
