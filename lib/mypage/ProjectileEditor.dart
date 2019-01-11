import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

class ProjectileEditor extends StatelessWidget {
  Size deviceSize;
  List<Object> values = new List(5);

  void onDelete() {}

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Projectile Editor"),
      ),
      body: Text("Projectile Editor"),
    );
  }
}
