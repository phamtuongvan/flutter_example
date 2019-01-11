import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/mypage/HomeDrawer.dart';
import 'package:pamobile_first_flutter_app/ui/widgets/custom_float.dart';

class HomeScaffold extends StatefulWidget {
  final appTitle;
  final Widget bodyData;
  final showFAB;
  final showDrawer;
  final backGroundColor;
  final actionFirstIcon;
  final scaffoldKey;
  final showBottomNav;
  final floatingIcon;
  final centerDocked;
  final elevation;
  final Widget appBar;
  final Widget tabBar;
  final showTabBar;

  HomeScaffold(
      {this.appTitle,
      this.bodyData,
      this.showFAB = false,
      this.showDrawer = false,
      this.backGroundColor,
      this.actionFirstIcon = Icons.search,
      this.scaffoldKey,
      this.showBottomNav = false,
      this.centerDocked = false,
      this.floatingIcon,
      this.elevation = 4.0,
      this.appBar,
      this.tabBar,
      this.showTabBar = false,});

  @override
  _HomeScaffoldState createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends State<HomeScaffold> {
  Choice _selectedChoice = choices[0]; // The app's "state".
  double listViewOffset = 0.0;
  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }


  RawMaterialButton ActionButton(IconData iconData){
    var button = new RawMaterialButton(
      onPressed: () {},
      child: new Icon(
        iconData,
        color: Colors.white,
        size: 24.0,
      ),
      shape: new CircleBorder(),
      elevation: 0.0,
      highlightElevation: 0,
      highlightColor: Colors.transparent,
      fillColor: Colors.transparent,
      constraints: BoxConstraints(minWidth: 48.0, minHeight: 48.0),
      padding: const EdgeInsets.all(0),
    );
    return button;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var popup = PopupMenuButton<Choice>(
      onSelected: _select,
      itemBuilder: (BuildContext context) {
        return choices.skip(2).map((Choice choice) {
          return PopupMenuItem<Choice>(
            value: choice,
            child: Text(choice.title),
          );
        }).toList();
      },
    );





    return Scaffold(
      key: widget.scaffoldKey != null ? widget.scaffoldKey : null,
      backgroundColor:
          widget.backGroundColor != null ? widget.backGroundColor : null,
      appBar: AppBar(
        elevation: widget.elevation,
        title: Text(widget.appTitle),
        bottom: widget.showTabBar ? widget.tabBar : null,
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          ActionButton(Icons.search),
          ActionButton(Icons.delete),
          ActionButton(Icons.edit)
        ],
      ),
      drawer: widget.showDrawer ? HomeDrawer() : null,
      body: widget.bodyData,
      floatingActionButton: widget.showFAB
          ? CustomFloat(
              builder: widget.centerDocked
                  ? Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    )
                  : null,
              icon: widget.floatingIcon,
              qrCallback: () {},
            )
          : null,
      floatingActionButtonLocation: widget.centerDocked
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: widget.showBottomNav ? null : null,
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class RightPopupChoiceContent extends StatelessWidget {
  const RightPopupChoiceContent({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
