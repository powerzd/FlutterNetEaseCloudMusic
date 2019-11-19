import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CloudShowMusicContainer extends StatelessWidget{

  final String imagePath;
  final String title;
  final String subTitle;
  final String author;
  final int mvId;

  const CloudShowMusicContainer({Key key, @required this.imagePath,@required this.title, @required this.subTitle, this.author, this.mvId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child:ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: CachedNetworkImage(
              imageUrl:imagePath,
            ),
          ),
        ),
        title: Text(title,overflow: TextOverflow.ellipsis,),
        subtitle: Text("$author - $subTitle",overflow: TextOverflow.ellipsis),
        trailing: Icon(mvId == 0 ? null : Icons.play_circle_outline),
      ),
    );
  }

}