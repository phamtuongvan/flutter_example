import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/main.dart';
import 'package:pamobile_first_flutter_app/mypage/HomeWithTabs.dart';
import 'package:pamobile_first_flutter_app/ui/page/notfound/notfound_page.dart';
import 'package:pamobile_first_flutter_app/ui/widgets/about_tile.dart';
import 'package:pamobile_first_flutter_app/utils/uidata.dart';
import 'package:launch_review/launch_review.dart';
//new AssetImage(UIData.pkImage)
class HomeDrawer extends StatelessWidget {
  double imgSize = 48.0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
//            SizedBox(
//                height: Platform.isAndroid ? 24 : 96),
            new DrawerHeader(
                child:
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    new CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://lh3.googleusercontent.com/-BkHU5I26gck/VmHKijuPKAI/AAAAAAAAABY/IsbUSpCS3Z4OEKQBPOhgfzgHWvUOHRkGwCEwYBhgL/w280-h280-p/_DSC0014.JPG"),

                              ),
                    Text(
                        UIData.isLogin ? "Pham Tuong Van" : "!",style: TextStyle(fontWeight: FontWeight.w700)
                    ),
                    Text(
                    UIData.isLogin ? "phamtuongvan1993@gmail.com" : "Signin",style: TextStyle(fontWeight: FontWeight.w700),),
                    ],
                  ),
//                UserAccountsDrawerHeader(
//                  accountName: Text(
//                      UIData.isLogin ? "Pham Tuong Van" : "!",style: TextStyle(fontWeight: FontWeight.w700)
//                  ),
//                  accountEmail: Text(
//                    UIData.isLogin ? "phamtuongvan1993@gmail.com" : "Signin",style: TextStyle(fontWeight: FontWeight.w700),),
//                  currentAccountPicture: new CircleAvatar(
//                    backgroundImage: NetworkImage(
//                        "https://lh3.googleusercontent.com/-BkHU5I26gck/VmHKijuPKAI/AAAAAAAAABY/IsbUSpCS3Z4OEKQBPOhgfzgHWvUOHRkGwCEwYBhgL/w280-h280-p/_DSC0014.JPG"),
//                  ),
//                ),
                decoration: new BoxDecoration(
                    color: Colors.amberAccent
                )
            ),
            new ListTile(
              title: Text(
                "New Addon",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Image.asset("assets/icons/new.png",width: imgSize,height: imgSize,),
              onTap: (){
                RestartWidget.restartApp(context);
              },
            ),
            new ListTile(
              title: Text(
                "My Addons",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Image.asset("assets/icons/my.png",width: imgSize,height: imgSize,),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, UIData.pageMyAddons);
              },
            ),
            new ListTile(
              title: Text(
                "More Addons",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Image.asset("assets/icons/more.png",width: imgSize,height: imgSize,),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, UIData.pageMoreAddons);
              },
            ),
            new ListTile(
              title: Text(
                "Rate App",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Image.asset("assets/icons/rate.png",width: imgSize,height: imgSize),
              onTap: (){
                LaunchReview.launch(androidAppId: "co.pamobile.mcpe.addonsmaker",
                    iOSAppId: "1208925143");
              },
            ),
//          new ListTile(
//            title: Text(
//              "How to use",
//              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
//            ),
//            leading:Image.asset("assets/icons/help.png",width: imgSize,height: imgSize,),
//            onTap: (){
//              Navigator.push(
//                context,
//                new MaterialPageRoute(
//                    builder: (context) => new HomeWithTabs(title: "Title",)),
//              );
//            },
//          ),
            //MyAboutTile()
          ],
        ),
      ),
    );
  }
}