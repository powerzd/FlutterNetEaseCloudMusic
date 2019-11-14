import 'package:flutter/cupertino.dart';

import 'LoadingProgress.dart';
import 'NoDataPage.dart';

class FutureBuilderBox extends StatelessWidget{

  final Future future;
  final Widget widget;

  FutureBuilderBox({@required this.future,@required this.widget});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
      future: future,
      builder: (context, snap) {
        switch (snap.connectionState) {
          case ConnectionState.none:
            {
              return NoDataPage();
            }
          case ConnectionState.waiting:
            {
              return LoadingProgress();
            }
          case ConnectionState.active:
            {
              return LoadingProgress();
            }
          case ConnectionState.done:
            {
              return widget;
            }
        }
        return Container(
          height: 0,
          width: 0,
        );
      },
    );
  }
}