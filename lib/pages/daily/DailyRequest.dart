import 'package:net_ease_cloud_music/pages/daily/DailyRecommendResp.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';

class DailyRequest{
  static final recommendPath = "recommend/songs";

  static Future<DailyRecommendResp> getDailyRecommend() async{
    DailyRecommendResp dailyRecommendResp;
    Map<String,dynamic> dailyRecommendJson = await NetUtil.init().get(recommendPath);
    dailyRecommendResp = DailyRecommendResp.fromJson(dailyRecommendJson);
    return dailyRecommendResp;
  }

}