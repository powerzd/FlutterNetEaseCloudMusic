import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:net_ease_cloud_music/base/BaseStyles.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';
import 'package:net_ease_cloud_music/pages/hotComment/HotCommentResp.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/widget/IconBox.dart';
import 'package:net_ease_cloud_music/widget/LoadingProgress.dart';
import 'package:net_ease_cloud_music/widget/NoDataPage.dart';

class HotCommentMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HotCommentMainState();
  }
}

class _HotCommentMainState extends State<HotCommentMain>
    with AutomaticKeepAliveClientMixin {
  Future _future;
  HotCommentResp _hotCommentResp;
  bool _isFocus = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = getHotComment();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // TODO: implement build
    return Scaffold(
      body: futureBody(),
    );
  }

  Widget futureBody() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorSquareBegin, colorSquareEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: FutureBuilder(
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
                return mainBox();
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

  Widget mainBox() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: hotSwiper(),
        ),
//        Container(
//          color: colorHotTextField,
//          child: Row(
//            children: <Widget>[
//              Container(
//                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                width: 200,
//                child: TextField(
//                  decoration: InputDecoration(
//                    hintText: "说点什么吧~",
//                    hintStyle: BaseStyles.styleWhiteSize14,
//                    border: InputBorder.none,
//                  ),
//                  maxLines: 1,
//                ),
//              ),
//              //_isFocus ? Text("发送",style: BaseStyles.styleWhiteSize14,) : commentWidget(),
//            ],
//          ),
//        ),
      ],
    );
  }

  Widget commentWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconBox(
          icon: Icons.message,
          number: "12345",
        )
      ],
    );
  }

  Widget hotSwiper() {
    return Swiper(
      itemCount: _hotCommentResp.data.length,
      itemBuilder: (context, index) {
        Data data = _hotCommentResp.data[index];
        return Container(
          margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(data.simpleUserInfo.avatar),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    data.simpleUserInfo.nickname,
                    style: BaseStyles.styleWhiteSize14,
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                "assets/icon_hot.png",
                height: 30.0,
              ),
              Text(
                data.content,
                style: BaseStyles.styleWhiteHuge,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "${data.simpleResourceInfo.name} - ${data.simpleResourceInfo.artists[0].name} ",
                    style: BaseStyles.styleWhiteSize14,
                  ),
                  Icon(
                    data.liked ? Icons.favorite : Icons.favorite_border,
                    color: colorHotCommentColor,
                    size: 15,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Future getHotComment() async {
    Map<String, dynamic> commentJson =
        await NetUtil.init().get("comment/hotwall/list");
    _hotCommentResp = HotCommentResp.fromJson(commentJson);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
