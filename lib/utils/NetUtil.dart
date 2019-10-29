import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';

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

  Future<Map<String,dynamic>> get(String path,{CancelToken cancelToken}) async{
    Response response = await dio.get(baseUrl + path,cancelToken: cancelToken);
    debugPrint(response.toString());
    if(response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.created){
      return json.decode(response.toString());
    }
    return Future.error(DioError(
      response: response,
      error:toString(),
    ));
  }

  Future<List<Response>> multipleRequest(List<MultipleRequestUtil> requests) async{

    List<Future<Response>> futures = [];
    for(int i = 0; i < requests.length; i++){
      if(requests[i].requestMethod == RequestMethod.GET){
        futures.add(dio.get(requests[i].requestPath));
      }else if(requests[i].requestMethod == RequestMethod.POST){
        futures.add(dio.post(requests[i].requestPath,data: requests[i].data));
      }
    }
    List<Response> response = await Future.wait(futures);
    return response;
  }
}