import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/pages/find/data/BannerResp.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';

class FindRequest{

  static final bannerPath = "banner?type=1";

  static Future<BannerResp> getBanner() async{
    BannerResp bannerResp;
    Map<String,dynamic> bannerJson = await NetUtil.init().get(bannerPath);
    bannerResp = BannerResp.fromJson(bannerJson);
    return bannerResp;
  }
}