import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';
class MoreAddonsPage extends StatelessWidget {
  Size deviceSize;
  List<Object> values = new List(20);
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    final double itemHeight = 140;
    final double itemWidth = (deviceSize.width - 16)/2;
    var gridView = new GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: values.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        final cardIcon = TransitionToImage(
          AdvancedNetworkImage(
            'https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png',
          ),
          duration: Duration(milliseconds: 1),
          fit: BoxFit.contain,
          placeholder: FlutterLogo(),
          enableRefresh: false,
          height: itemHeight,
          width: itemHeight,
        );

        var row2 = Container(
          child:Center(
            child:  Text(
              "Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
        );
        return Card(
          margin: EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[Expanded(
              child: cardIcon,
              flex: 7,
            ),
            Expanded(
              child: row2,
              flex: 3,
            )],
          ),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("More Addons",textAlign: TextAlign.left,)
          ]
        ),
        actions: <Widget>[
        ],
      ),
      body: gridView,
    );
  }
}