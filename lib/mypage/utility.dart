import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/model/menu.dart';

class Utility{
  static final Utility _singleton = new Utility._internal();

  factory Utility() {
    return _singleton;
  }

  Utility._internal();

  void showYesNoDialog(BuildContext context,String title,VoidCallback onYesPressed){
    showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          content: new Text(title),
          actions: <Widget>[
            new FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("NO")),
            new FlatButton(
                onPressed: (() {
                  Navigator.pop(context);
                  if(onYesPressed != null){
                    onYesPressed();
                  }

                }),
                child: const Text("YES"))
          ],
        ));
  }

  void MyshowModalBottomSheet(BuildContext context, Menu menu) {

    showModalBottomSheet(
        context: context,
        builder: (context) => Material(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.only(
                    topLeft: new Radius.circular(15.0),
                    topRight: new Radius.circular(15.0),
                    bottomLeft: new Radius.circular(15.0),
                    bottomRight: new Radius.circular(15.0))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: menu.items.length,
                    itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListTile(
                          title: Text(
                            menu.items[i],
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, "/${menu.items[i]}");
                          }),
                    ),
                  ),
                ),
              ],
            )));
  }
}