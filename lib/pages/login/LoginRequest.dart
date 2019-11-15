import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/NetUtil.dart';
import 'package:net_ease_cloud_music/utils/SpUtil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/LoginResp.dart';

class LoginRequest{
  Future<LoginResp> login(String path,Map<String,dynamic> data) async{
    Map<String,dynamic> loginJson = await NetUtil.init().post(path,data: data);
    LoginResp resp = LoginResp.fromJson(loginJson);
    if(resp.code == 200){
      SpUtil.putInt(LOGIN_ID, resp.account.id);
      SpUtil.putString(AVATAR_PATH, resp.profile.avatarUrl);
      SpUtil.putString(NICKNAME, resp.profile.nickname);
      SpUtil.putString(ID, resp.profile.userId.toString());
    }
    return resp;
  }
  Future<LoginResp> emailLogin(String path) async{
    Map<String,dynamic> loginJson = await NetUtil.init().get(path);
    LoginResp resp = LoginResp.fromJson(loginJson);
    if(resp.code == 200){
      SpUtil.putInt(LOGIN_ID, resp.account.id);
      SpUtil.putString(AVATAR_PATH, resp.profile.avatarUrl);
      SpUtil.putString(NICKNAME, resp.profile.nickname);
      SpUtil.putString(ID, resp.profile.userId.toString());
    }
    return resp;
  }
}