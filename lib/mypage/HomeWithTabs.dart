import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/mypage/MoreAppPage.dart';
import 'package:pamobile_first_flutter_app/mypage/MyHomePage.dart';
import 'dart:io' show Platform;

import 'package:pamobile_first_flutter_app/utils/uidata.dart';

class TabPage {
  String label;

  TabPage(this.label);
}

class Page implements TabPage {
  @override
  String label;

  Page(this.label);
}

List<TabPage> _allPages;

class HomeWithTabs extends StatefulWidget {
  HomeWithTabs({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeWithTabsState createState() => new _HomeWithTabsState();
}

class _HomeWithTabsState extends State<HomeWithTabs>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  TabPage _selectedPage;

  @override
  void initState() {
    super.initState();
    if (_allPages == null) {
      _allPages = Platform.isAndroid
          ? <TabPage>[
              new Page('HOME'),
              new Page('ITEMS'),
              new Page('PROJECTILE'),
              new Page('SHOWCASE'),
              new Page('MANAGE ADDONS'),
              new MoreAppPage(label: 'MORE'),
            ]
          : <TabPage>[
              new Page('HOME'),
              new Page('ITEMS'),
              new Page('PROJECTILE'),
              new Page('SHOWCASE'),
              new MoreAppPage(label: 'MORE'),
            ];
    }
    _controller = new TabController(vsync: this, length: _allPages.length);
    _controller.addListener(_handleTabSelection);
    _selectedPage = _allPages[0];

//    String data =  DefaultAssetBundle.of(context).loadString("assets/data.json");
//    final jsonResult = json.decode(data);

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      _selectedPage = _allPages[_controller.index];
    });
  }

  Widget buildTabView(TabPage page) {
    StatelessWidget container;
    switch (page.label) {
      case "HOME":
        container = new Container(
            key: new ValueKey<String>(page.label),
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: new Card(
                child: new Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(page.label,
                            style: new TextStyle(fontSize: 32.0),
                            textAlign: TextAlign.center),
                        new RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, UIData.pageMobEditor);
                            },
                      child:
                        Text("Edit Mob",style: new TextStyle(fontSize: 32.0),textAlign: TextAlign.center),)
                      ],
                    ))));
        break;
      case "ITEMS":
        container = new Container(
            key: new ValueKey<String>(page.label),
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: new Card(
                child: new Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(page.label,
                                style: new TextStyle(fontSize: 32.0),
                                textAlign: TextAlign.center),
                        new RaisedButton(
                                onPressed: () {
                                      Navigator.pushNamed(context, UIData.pageItemEditor);},
                                child:
                                      Text("Edit Item",style: new TextStyle(fontSize: 32.0),textAlign: TextAlign.center),
                        )
                      ],
                    ))));
        break;
      case "PROJECTILE":
        container = new Container(
            key: new ValueKey<String>(page.label),
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: new Card(
                child: new Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(page.label,
                            style: new TextStyle(fontSize: 32.0),
                            textAlign: TextAlign.center),
                        new RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, UIData.pageProjectileEditor);},
                          child:
                          Text("Edit Projectile",style: new TextStyle(fontSize: 32.0),textAlign: TextAlign.center),
                        )
                      ],
                    ))));
        break;
      case "SHOWCASE":
        container = new Container(
            key: new ValueKey<String>(page.label),
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: new Card(
                child: new Center(
                    child: new Text(page.label,
                        style: new TextStyle(fontSize: 32.0),
                        textAlign: TextAlign.center))));
        break;
      case "MANAGE ADDONS":
        container = new Container(
            key: new ValueKey<String>(page.label),
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: new Card(
                child: new Center(
                    child: new Text(page.label,
                        style: new TextStyle(fontSize: 32.0),
                        textAlign: TextAlign.center))));
        break;
      case "MORE":
        container = page as StatelessWidget;
        break;
    }

    return new Builder(builder: (BuildContext context) {
      return container;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      appTitle: widget.title,
      tabBar: new TabBar(
        isScrollable: true,
        controller: _controller,
        tabs: _allPages
            .map((TabPage page) => Container(
                  constraints: BoxConstraints(
                    minWidth: 120.0,
                  ),
                  child: Tab(text: page.label.toUpperCase()),
                ))
            .toList(),
      ),
      bodyData: new TabBarView(
          controller: _controller,
          children: _allPages.map(buildTabView).toList()),
      showFAB: false,
      showDrawer: true,
      showTabBar: true,
    );
  }
}
