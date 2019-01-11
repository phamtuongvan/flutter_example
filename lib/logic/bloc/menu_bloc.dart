import 'dart:async';

import 'package:pamobile_first_flutter_app/logic/viewmodel/menu_view_model.dart';
import 'package:pamobile_first_flutter_app/model/menu.dart';

class MenuBloc {
  final _menuVM = MenuViewModel();
  final menuController = StreamController<List<Menu>>();

  Stream<List<Menu>> get menuItems => menuController.stream;

  MenuBloc() {
    menuController.add(_menuVM.getMenuItems());
  }
}
