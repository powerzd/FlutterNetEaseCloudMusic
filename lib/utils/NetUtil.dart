import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';

class NetUtil{
  static final NetUtil _singleton = NetUtil.init();
  Dio dio;

  BaseOptions _options = new BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 5000,
  );

  NetUtil.init(){
    dio = Dio(_options);
  }

  factory NetUtil(){
    return _singleton;
  }

  Future<Map<String,dynamic>> post(String path,{data,CancelToken cancelToken}) async{
    Response response = await dio.post(baseUrl + path,data: data,cancelToken: cancelToken);
    debugPrint(response.toString());
    if(response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.created){
      return json.decode(response.toString());
    }
    return Future.error(DioError(
      response: response,
      error:toString(),
    ));
  }
}