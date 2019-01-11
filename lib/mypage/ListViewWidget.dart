import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/mypage/MoreAppPage.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";

class ListViewWidget extends StatefulWidget {
  List<dynamic> data = [];
  List<Item> item = [];

  ListViewWidget({Key key, this.data}) : super(key: key);

  @override
  _ListViewWidgetState createState() => new _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
//  RefreshMode  refreshing = RefreshMode.idle;
//  LoadMode loading = LoadMode.idle;
  RefreshController _refreshController;

  void _getDatas() {
    if (widget.data != null) {
      for (int i = 0; i < widget.data.length; i++) {
        MoreApp moreApp = widget.data[i] as MoreApp;
        widget.item.add(Item(
          name: moreApp.name,
          icon: moreApp.icon,
          packageName: moreApp.packageName,
        ));
      }
    }
  }

  void enterRefresh() {
    _refreshController.requestRefresh(true);
  }

  void _onOffsetCallback(bool isUp, double offset) {
    // if you want change some widgets state ,you should rewrite the callback
  }

  @override
  void initState() {
    // TODO: implement initState
    _refreshController = new RefreshController();
    _getDatas();
    super.initState();
  }

  Widget _footerCreate(BuildContext context, int mode) {
    return new ClassicIndicator(
      mode: mode,
      refreshingText: "",
      idleText: "Load more...",
    );
  }

  Widget _headerCreate(BuildContext context, int mode) {
    return new ClassicIndicator(
      mode: mode,
      refreshingText: "Refreshing...",
      idleText: "Pull to refresh...",
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new SmartRefresher(
            enablePullDown: true,
            enablePullUp: true,
            controller: _refreshController,
            headerBuilder: _headerCreate,
            footerBuilder: _footerCreate,
            footerConfig: new RefreshConfig(),
            onRefresh: (up) {
              if (up)
                new Future.delayed(const Duration(milliseconds: 1009))
                    .then((val) {
                  //widget.data.add(value)
                  _refreshController.scrollTo(
                      _refreshController.scrollController.offset + 50.0);
                  _refreshController.sendBack(true, RefreshStatus.idle);
                  setState(() {});
//                refresher.sendStatus(RefreshStatus.completed);
                });
              else {
                new Future.delayed(const Duration(milliseconds: 1009))
                    .then((val) {

                  setState(() {});
                  _refreshController.sendBack(false, RefreshStatus.idle);
                });
              }
            },
            onOffsetChange: _onOffsetCallback,
            child: new ListView.builder(
                reverse: true,
                itemExtent: 100.0,
                itemCount: widget.item.length,
                itemBuilder: (context, index) => GestureDetector(
                      child: widget.item[index],
                      onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text((widget.item[index] as Item).name))),
                    ))));

  }
}

class Item extends StatefulWidget {
  String icon;
  String name;
  String packageName;

  Item({Key key, this.icon,this.name ,this.packageName}) : super(key: key);

  @override
  _ItemState createState() => new _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return new Card(
      margin:
      new EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: Column(children: <Widget>[
        new Image.network(widget.icon),
        new Text(widget.name),
      ],),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("implement dispose");
    super.dispose();
  }
}
