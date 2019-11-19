import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:net_ease_cloud_music/base/baseConstant.dart';
import 'package:net_ease_cloud_music/utils/MutipleRequestUtil.dart';
import 'package:net_ease_cloud_music/utils/RequestMethod.dart';
import 'package:path_provider/path_provider.dart';

class NetUtil{
  static final NetUtil _singleton = NetUtil.init();
  Dio dio;
  static var cookieJar;

  BaseOptions _options = new BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 5000,
    followRedirects: false,
  );

  Options options = Options(headers: {HttpHeaders.acceptHeader:"accept: application/json",});

  static initCookie() async{
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;
    cookieJar=PersistCookieJar(dir:appDocPath+"/.cookies/");
  }

  NetUtil.init(){
    dio = Dio(_options)..interceptors.add(CookieManager(cookieJar));
  }

  factory NetUtil(){
    return _singleton;
  }

  Future<Map<String,dynamic>> post(String path,{data,CancelToken cancelToken}) async{
    Response response = await dio.post(baseUrl + path,data: data,cancelToken: cancelToken,options: options);
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
    print("${baseUrl + path}");

    try {
      //404
      await dio.get(baseUrl + path,cancelToken: cancelToken);
    } on DioError catch(e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if(e.response != null) {
        print("e.response.data is ${e.response.data}");
        print("e.response.headers is ${e.response.headers}");
        print("e.response.request is ${e.response.request}");
      } else{
        // Something happened in setting up or sending the request that triggered an Error
        print("e.request is ${e.request}");
        print("e.message is ${e.message}");
      }
    }

    Response response = await dio.get(baseUrl + path,cancelToken: cancelToken);
    print(response.statusCode);
    if(response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.created){
      print(response.statusCode);
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
        futures.add(dio.get(requests[i].requestPath,options: options));
      }else if(requests[i].requestMethod == RequestMethod.POST){
        futures.add(dio.post(requests[i].requestPath,data: requests[i].data,options: options));
      }
    }
    try {
      //404
      await Future.wait(futures,eagerError: true);
    } on DioError catch(e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if(e.response != null) {
        print("e.response.data is ${e.response.data}");
        print("e.response.headers is ${e.response.headers}");
        print("e.response.request is ${e.response.request}");
      } else{
        // Something happened in setting up or sending the request that triggered an Error
        print("e.message is ${e.message}");
        print("error is ${e.error}");
      }
    }
    List<Response> response = await Future.wait(futures,eagerError: true);
    return response;
  }
}