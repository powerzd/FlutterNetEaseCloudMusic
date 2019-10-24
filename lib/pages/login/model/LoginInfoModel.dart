
import 'package:flutter/cupertino.dart';

class LoginInfoModel with ChangeNotifier{
  String _avatarPath = "";
  String get avatarPathValue => _avatarPath;

  void setAvatarPath(String path){
    _avatarPath = path;
  }

}