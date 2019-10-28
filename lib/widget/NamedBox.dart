import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class NamedBox extends StatelessWidget{

  String imgPath;
  String name;
  int number;

  NamedBox(this.imgPath,this.name,this.number);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(imgPath,height: 100.0,width: 100.0,),
              Text(name)
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Text("$number"),
          )
        ],
      ),
    );
  }

}