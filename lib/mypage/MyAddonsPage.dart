import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

class MyAddonsPage extends StatelessWidget {
  Size deviceSize;
  List<Object> values = new List(5);

  void onDelete() {}

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;
    final double itemHeight = 100;
    final double itemWidth = deviceSize.width - 16;

    var gridView = new GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: values.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 0,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 1),
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

        var row1 = Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text("Hellow"),
                flex: 2,
              ),
              Expanded(
                child: Text("Hellow"),
                flex: 2,
              ),
              GestureDetector(
                onTap: onDelete,
                child: Icon(
                  Icons.delete,
                  size: 24.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.blue.shade100),
        );
        var row2 = Container(
          child: Text(
            "Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow,Hellow Hellow Hellow Hellow",
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          decoration: BoxDecoration(color: Colors.red.shade100),
        );
        var row3 = Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child:  Text('EDIT',style: TextStyle(fontSize: 12,),),
                  padding: EdgeInsets.all(0.0),
                  color: Colors.white,
                  onPressed: () {
                    // Perform some action
                  },
                ),
                flex: 1,
              ),
              Expanded(
                child: RaisedButton(
                  child:  Text('UPLOAD',style: TextStyle(fontSize: 12,color: Colors.white),),
                  padding: EdgeInsets.all(0.0),
                  color: Colors.lightBlue,
                  onPressed: () {
                    // Perform some action
                  },
                ),
                flex: 1,
              ),
              Expanded(
                child: RaisedButton(
                  child:  Text('INSTALL',style: TextStyle(fontSize: 12,color: Colors.white),),
                  padding: EdgeInsets.all(0.0),
                  color: Colors.orange,
                  onPressed: () {
                    // Perform some action
                  },
                ),
                flex: 1,
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.green.shade100),
        );

        var cardText = Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: row1,
                flex: 1,
              ),
              Expanded(
                child: row2,
                flex: 2,
              ),
              Expanded(
                child: row3,
                flex: 1,
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.black12),
        );

        var expended = Expanded(
          child: cardText,
        );
        return Card(
          margin: EdgeInsets.all(0.0),
          child: Row(
            children: <Widget>[cardIcon, expended],
          ),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("My Addons"),
      ),
      body: gridView,
    );
  }
}
