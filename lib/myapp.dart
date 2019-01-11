import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pamobile_first_flutter_app/mypage/HomeWithTabs.dart';
import 'package:pamobile_first_flutter_app/mypage/ItemEditor.dart';
import 'package:pamobile_first_flutter_app/mypage/MobEditor.dart';
import 'package:pamobile_first_flutter_app/mypage/MyAddonsPage.dart';
import 'package:pamobile_first_flutter_app/mypage/MoreAddonsPage.dart';

import 'package:pamobile_first_flutter_app/mypage/OtherPage.dart';
import 'package:pamobile_first_flutter_app/mypage/ProjectileEditor.dart';
import 'package:pamobile_first_flutter_app/ui/page/home_page.dart';
import 'package:pamobile_first_flutter_app/ui/page/notfound/notfound_page.dart';

import 'package:pamobile_first_flutter_app/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'dart:io' show Platform;
class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
      title: UIData.appName,
      theme: ThemeData.light().copyWith(primaryColor: Platform.isIOS ? Colors.orange.shade500: Colors.orange.shade400,),
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      home: HomeWithTabs(title: "Title",),
      //home: TabsFabDemo(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      // initialRoute: UIData.notFoundRoute,

      //routes
      routes: <String, WidgetBuilder>{
        UIData.homeRoute: (BuildContext context) => HomePage(),
        UIData.pageMoreAddons: (BuildContext context) => MoreAddonsPage(),
        UIData.pageMyAddons: (BuildContext context) => MyAddonsPage(),
        UIData.pageMobEditor: (BuildContext context) => MobEditor(),
        UIData.pageItemEditor: (BuildContext context) => ItemEditor(),
        UIData.pageProjectileEditor: (BuildContext context) => ProjectileEditor(),
        UIData.dashboardThreeRoute: (BuildContext context) => OtherPage(),
      },
      onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.coming_soon,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.coming_soon,
                message: "Under Development",
                iconColor: Colors.green,
              )));

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Platform.isIOS ? Colors.orange.shade700 : Colors.orange.shade700);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    return materialApp;
  }
}
