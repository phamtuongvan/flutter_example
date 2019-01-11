import 'dart:async';
import 'dart:convert';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pamobile_first_flutter_app/mypage/HomeWithTabs.dart';
import 'package:pamobile_first_flutter_app/mypage/ListViewWidget.dart';
import 'package:launch_review/launch_review.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io' show Platform;
class MoreAppPage extends StatelessWidget implements TabPage {
  @override
  String label;
  MoreAppPage({Key key, this.label}) : super(key: key);

  Future<RemoteConfig> setupRemoteConfig() async {
    final RemoteConfig remoteConfig = await RemoteConfig.instance;
    // Enable developer mode to relax fetch throttling
    remoteConfig.setConfigSettings(RemoteConfigSettings(debugMode: true));
    await remoteConfig.setDefaults(<String, dynamic>{
      'moreApps': '[{"icon":"https://lh3.googleusercontent.com/h4ptBFDyxbLw7pY0stXSdbWSUm6x972ta6D8HecbfDvlBBzGWb76yj228fHYBB6-kg","name":"AddOns Maker","packageName":"co.pamobile.minecraftpe.addonsmaker"},{"icon":"https://lh3.googleusercontent.com/ju-FPEkXNJIY9MX43m51VJNQxfJEtRiBFaFoSaQ0eCPxAVyn5fym3EAQAR6n2jUopA","name":"Dinosaur Sim","packageName":"co.pamobile.gamestudio.jurassicdinosaurs"},{"icon":"https://lh3.googleusercontent.com/XeyY_tHl9qlJBXeh30vDPrjm-Hx3FxCmvvjv6cbXcs_M2Fw1g02thhf4rKj0NRXEyDw","name":"Auto Build House","packageName":"co.pamobile.mcpe.autobuild"},{"icon":"https://lh3.googleusercontent.com/exJnVo6gxphwU8duYlfdZ6r0h-5iWr2BCY0q4f7rEWuBwqNniYMLxq_p6vmtg2Tu7aQ","name":"Game Tuner","packageName":"co.pamobile.gamelauncher"},{"icon":"https://lh3.googleusercontent.com/3T2Qm-R-lGDPwzLQ6i4-Dt1UBGIknyaGbxoXSIPDG4Og_KtbQ5y-iVpqoF_6b4OmrRE","name":"Notes","packageName":"co.pamobile.notes"}, {"icon":"https://lh3.googleusercontent.com/h4ptBFDyxbLw7pY0stXSdbWSUm6x972ta6D8HecbfDvlBBzGWb76yj228fHYBB6-kg","name":"Addons Maker for MCPE","packageName":"co.pamobile.minecraft.addonsmaker"},{"icon":"https://lh3.googleusercontent.com/oI1GZ83i_lPljk-j0LAm51regePegG8gj0ran0I-81zOiZR_Cs0XeomQUyep85DU3bs","name":"Battery Charger","packageName":"co.pamobile.fastbatterycharger"},{"icon":"https://lh3.googleusercontent.com/FBnngVrODLITe91lRAFV73yLR4eruqPHjl0JEqHB2baBUbzYIAnv5J8nBaILMjMHon1X","name":"Clash Royale Card","packageName":"co.pamobile.clashroyale.cardmaker"},{"icon":"https://lh3.googleusercontent.com/aDwIwoWWCE5KhvHhhMoeoDWhx83zR-XXsY3fxSpAW5-hAMTqZLBUrERv9O6lWCR9dPA","name":"YugiOh Card","packageName":"co.pamobile.yugioh.cardmaker"},{"icon":"https://lh3.googleusercontent.com/FSZnEBOWH3GVSpBTvRB2DkDWW4yLR_N6UzaJ7WBYrHXocju867DQ3l3CxFBqVQRUF9Q","name":"Pokemon Card","packageName":"co.pamobile.pokemon.cardmaker"},{"icon":"https://lh3.googleusercontent.com/5hf0zUfMyWlIF_YdMGHvpKcakjuJr8JYV_z0FEEH4RcaJAhT8Ul-bDutr_GCu9vuCg","name":"Hearthstone Card","packageName":"co.pamobile.hearthstone.cardmaker"},{"icon":"https://lh3.googleusercontent.com/TeerXybEQPeMIrTivfLrqC-Yv7VI7U-DYNxsCeCQ5rN0KVLROWnJC-yh-mnwfWJ2w9Q","name":"Mod Maker","packageName":"com.ultimategamestudio.mcpecenter.modmaker"},{"icon":"https://lh3.googleusercontent.com/o7GZVP8FHC-P2vNIJXQ3UHNHUz0E2wNIfz7BwwtXtAszE7Sg6XBWGuySruZvhXNTaQk","name":"Mods","packageName":"com.ultimategamestudio.mcpecenter.mods"},{"icon":"https://lh3.googleusercontent.com/jTmV2uf2WU7paqt-X1n8ZdJIfhK1poVjX9vcG_ZO9G1FrEIX5vsxHXYKRUCIqTDSmg","name":"Maps","packageName":"com.ultimategamestudio.mcpecenter.maps"},{"icon":"https://lh3.googleusercontent.com/ZFWsT0vPuJ4U8nQKwCbZ4yotERrMoqO1jbFrrdp8MDSISnS87i4l6abzGonvoL0gQ4A","name":"Resources Pack","packageName":"com.ultimategamestudio.mcpecenter.texture"},{"icon":"https://lh3.googleusercontent.com/hR7Els6kKH1UMthWLt9kOXRK9hIQS1haU4VH3A6I2ubzZw6GUZJ2rst8H0mJxrnRJBfq","name":"Skins","packageName":"com.ultimategamestudio.mcpecenter.skins"},{"icon":"https://lh3.googleusercontent.com/jiYSXyzoXUkiSDUG01D4lRwTfFfyBz_qRk_r2LVcqLZKf3WsRe9K_hr7t1X_HuFISw","name":"Seeds","packageName":"com.ultimategamestudio.mcpecenter.seeds"},{"icon":"https://lh3.googleusercontent.com/ir8fq2Xo087Je4flms2PJyiYzd0W2q0HA5OKgu8wOx2w8Vkv_oFSraxOnFgzT12ChddE","name":"Pokemon Toolbox","packageName":"co.pamobile.pokemon.toolbox"}]',
      'moreAppsIOS': '[{"icon":"https://lh3.googleusercontent.com/ju-FPEkXNJIY9MX43m51VJNQxfJEtRiBFaFoSaQ0eCPxAVyn5fym3EAQAR6n2jUopA","name":"Dinosaur Sim","packageName":"co.pamobile.gamestudio.jurassicdinosaurs"},{"icon":"https://lh3.googleusercontent.com/09f4nA8Pbzp7H-2SRdWR6fIAvqbWZdJMC1bxt32z8uLbvUEGr3uoOYaZWPF0_IRbOZQ","name":"Card Maker for Clash Royale","packageName":"co.pamobile.clashroyale.cardmaker"},{"icon":"https://lh3.googleusercontent.com/FSZnEBOWH3GVSpBTvRB2DkDWW4yLR_N6UzaJ7WBYrHXocju867DQ3l3CxFBqVQRUF9Q","name":"Card Maker for Pokemon","packageName":"co.pamobile.pokemon.cardmaker"},{"icon":"https://lh3.googleusercontent.com/aDwIwoWWCE5KhvHhhMoeoDWhx83zR-XXsY3fxSpAW5-hAMTqZLBUrERv9O6lWCR9dPA","name":"Card Maker for YugiOh","packageName":"co.pamobile.yugioh.cardmaker"}]',
    });

    await remoteConfig.fetch(expiration: const Duration(hours: 5));

    return remoteConfig;
  }

  Future<IosAppInfo> fetchAppInfo(String bundleId) async {
    final response =
    await http.get('http://itunes.apple.com/lookup?bundleId='+bundleId);

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return IosAppInfo.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = new FutureBuilder(
      future: setupRemoteConfig(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: new Text('loading...'),
            );
          default:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else {
              RemoteConfig remoteConfig = snapshot.data;

              final moreApps = Platform.isAndroid ? moreAppFromJson(remoteConfig.getString('moreApps')) : moreAppFromJson(remoteConfig.getString('moreAppsIOS'));

              var gridView = new GridView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: moreApps.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 1 / 1.40,
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return new GestureDetector(
                      child: Column(
                        children: <Widget>[
                          new Card(
                            elevation: 5.0,
                            child: new Container(
                              alignment: Alignment.center,
                              child: new Image.network(
                                  moreApps[index].icon),
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(2.0),
                            child: Center(
                              child: new Text(moreApps[index].name,
                                  style: new TextStyle(fontSize: 12.0),
                                  textAlign: TextAlign.center,maxLines: 2,),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        if(Platform.isAndroid){
                          LaunchReview.launch(androidAppId: moreApps[index].packageName,
                              iOSAppId: "");

                        }else{
                          fetchAppInfo(moreApps[index].packageName).then((value){
                            LaunchReview.launch(androidAppId: moreApps[index].packageName,
                                iOSAppId: "${value.results[0].trackId}");
                          });

                        }


                      });
                },
              );
              //return new Text('Error: ${moreApps.length}');
              return gridView;
            }
        }
      },
    );
    return futureBuilder;
  }



  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    //List<RemoteConfig> values = snapshot.data;
    print("createListView");
    return new ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          children: <Widget>[
            new ListView(
              children: <Widget>[
                //new Image.network((values[0].moreApps[index].icon)),
                //new Text(values[0].moreApps[index].name),
                new Text("Hello World"),
              ],
            ),
            new Divider(
              height: 2.0,
            ),
          ],
        );
      },
    );
  }
}

List<MoreApp> moreAppFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<MoreApp>.from(jsonData.map((x) => MoreApp.fromJson(x)));
}

String moreAppToJson(List<MoreApp> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class MoreApp {
  String icon;
  String name;
  String packageName;

  MoreApp({
    this.icon,
    this.name,
    this.packageName,
  });

  factory MoreApp.fromJson(Map<String, dynamic> json) => new MoreApp(
    icon: json["icon"],
    name: json["name"],
    packageName: json["packageName"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "name": name,
    "packageName": packageName,
  };
}

IosAppInfo iosAppInfoFromJson(String str) {
  final jsonData = json.decode(str);
  return IosAppInfo.fromJson(jsonData);
}

class IosAppInfo {
  List<Result> results;

  IosAppInfo({
    this.results,
  });

  factory IosAppInfo.fromJson(Map<String, dynamic> json) => new IosAppInfo(
    results: new List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results": new List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  int trackId;

  Result({
    this.trackId,
  });

  factory Result.fromJson(Map<String, dynamic> json) => new Result(
    trackId: json["trackId"],
  );

  Map<String, dynamic> toJson() => {
    "trackId": trackId,
  };
}
