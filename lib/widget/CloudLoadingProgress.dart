import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_ease_cloud_music/base/baseColor.dart';

class CloudLoadingProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation(colorBase),
      ),
    );
  }
}
