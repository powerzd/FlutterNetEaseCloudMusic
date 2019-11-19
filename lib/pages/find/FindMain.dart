import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:net_ease_cloud_music/pages/find/data/BannerResp.dart';
import 'package:net_ease_cloud_music/pages/find/request/FindRequest.dart';
import 'package:net_ease_cloud_music/widget/CloudAvatorNameBox.dart';
import 'package:net_ease_cloud_music/widget/CloudFutureBuilder.dart';


class FindMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindMainState();
  }
}

class FindMainState extends State<FindMain> with TickerProviderStateMixin,AutomaticKeepAliveClientMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: <Widget>[
          banner(),
          section(),
        ],
      ),
    );
  }

  Widget section(){
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          CloudAvatorNameBox(
            avatorPath:"assets/icon_recommend.png",
            name: "每日推荐",
            tapFunction:(){
              Navigator.pushNamed(context, "dailyRecommend");
            },),
        ]
      ),
    );
  }

  Widget banner(){
    return CloudFutureBuilder<BannerResp>(
      futureFunc: FindRequest.getBanner,
      builder: (context,snapshot){
        var data = snapshot.banners;
        return Container(
          height: 150.0,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Swiper(
            itemBuilder: (context, index) {
              return Container(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      image: DecorationImage(
                          image: NetworkImage(data[index].pic),
                          fit: BoxFit.fill)),
                ),
              );
            },
            itemCount: data.length,
            pagination: new SwiperPagination(
                builder: DotSwiperPaginationBuilder(size: 5.0, activeSize: 5.0)),
          ),
        );
      },
    );
  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
