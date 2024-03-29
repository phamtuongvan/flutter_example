import 'package:flutter/material.dart';
import 'package:pamobile_first_flutter_app/logic/bloc/product_bloc.dart';

class ProductProvider extends InheritedWidget {
  final ProductBloc productBloc;
  final Widget child;

  ProductProvider({this.productBloc, this.child}) : super(child: child);

  static ProductProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ProductProvider);

  @override
  bool updateShouldNotify(ProductProvider oldWidget) =>
      productBloc != oldWidget.productBloc;
}
