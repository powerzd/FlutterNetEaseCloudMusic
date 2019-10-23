import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/LoginResp.dart';

class LoginRequest{
  Future<LoginResp> login(String path,Map<String,dynamic> data) async{
    Map<String,dynamic> loginJson = await NetUtil.init().post(path,data: data);
    LoginResp resp = LoginResp.fromJson(loginJson);
    if(resp.code != requestSuccess){
      return Future.error("登录失败,请检查网络后重试");
    }
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(LOGIN_ID, resp.account.id);
    return resp;
  }
}