import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pamobile_first_flutter_app/di/dependency_injection.dart';
import 'package:pamobile_first_flutter_app/myapp.dart';

//void main() {
//  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//  Injector.configure(Flavor.MOCK);
//  runApp(MyApp());
//}
void main() {
  Injector.configure(Flavor.MOCK);

  runApp(new RestartWidget(
      child: MyApp(),
  ));
}

class RestartWidget extends StatefulWidget {
  final Widget child;

  RestartWidget({this.child});

  static restartApp(BuildContext context) {
    final _RestartWidgetState state =
    context.ancestorStateOfType(const TypeMatcher<_RestartWidgetState>());
    state.restartApp();
  }

  @override
  _RestartWidgetState createState() => new _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = new UniqueKey();

  void restartApp() {
    this.setState(() {
      key = new UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      key: key,
      child: widget.child,
    );
  }
}
