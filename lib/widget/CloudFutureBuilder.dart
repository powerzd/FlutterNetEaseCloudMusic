import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef ValueWidgetBuilder<T> = Widget Function(
  BuildContext context,
  T value,
);

class CloudFutureBuilder<T> extends StatefulWidget {
  final ValueWidgetBuilder<T> builder;
  final Function futureFunc;
  final Widget loadingWidget;

  CloudFutureBuilder({
    @required this.futureFunc,
    @required this.builder,
    Widget loadingWidget,
  }) : loadingWidget = loadingWidget ??
            Container(
              alignment: Alignment.center,
              height: 200,
              child: CupertinoActivityIndicator(),
            );

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CloudFutureBuilder<T>();
  }
}

class _CloudFutureBuilder<T> extends State<CloudFutureBuilder<T>> {
  Future<T> _future;
  String oldParams = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((call) {
      _request();
    });
  }

  void _request() {
    setState(() {
      _future = widget.futureFunc();
    });
  }

  @override
  void didUpdateWidget(CloudFutureBuilder<T> oldWidget) {
    // 如果方法不一样了，那么则重新请求
    if (oldWidget.futureFunc != widget.futureFunc) {
      print('func not');
      WidgetsBinding.instance.addPostFrameCallback((call) {
        _request();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return _future == null
        ? widget.loadingWidget
        : FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return widget.loadingWidget;
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    return widget.builder(context, snapshot.data);
                  }
              }
              return Container();
            },
          );
  }
}
