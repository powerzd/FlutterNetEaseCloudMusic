import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/daily/DailyRecommendResp.dart';
import 'package:net_ease_cloud_music/pages/daily/DailyRequest.dart';
import 'package:net_ease_cloud_music/widget/CloudFutureBuilder.dart';
import 'package:net_ease_cloud_music/widget/CloudShowMusicBox.dart';
import 'package:net_ease_cloud_music/widget/CloudSliverTitleBar.dart';

class DailyRecommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DailyRecommendState();
  }
}

class _DailyRecommendState extends State<DailyRecommend> {
  final double _expandedHeight = 150.0;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: recommendList(),
    );
  }

  Widget recommendList() {
    return CloudFutureBuilder<DailyRecommendResp>(
      futureFunc: DailyRequest.getDailyRecommend,
      builder: (context, snapshot) {
        var data = snapshot.recommend;
        //widgets.add(sliverTitleBar(data.length));
        widgets.clear();
        widgets.addAll(
          data.map<CloudShowMusicContainer>((recommendData) {
            print("mvid id is ${recommendData.mvid}");
            return CloudShowMusicContainer(
              imagePath: recommendData.album.picUrl,
              title: recommendData.name,
              subTitle: recommendData.album.name,
              author: recommendData.artists[0].name,
              mvId: recommendData.mvid,
            );
          }).toList(),
        );
        return CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("每日推荐"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.question_answer),
                  onPressed: () {},
                ),
              ],
              pinned: true,
              expandedHeight: _expandedHeight,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    height: _expandedHeight,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [colorRecommend, colorBase],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 60),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "${DateTime.now().day}/",
                            style: BaseStyles.styleWhiteHuge,
                          ),
                          Text(
                            "${DateTime.now().month}",
                            style: BaseStyles.styleWhiteCommonText,
                          ),
                        ],
                      ),
                    )),
              ),
              bottom: CloudSliverTitleBar(
                number: data.length,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(widgets),
            )
          ],
        );
      },
    );
  }
}
