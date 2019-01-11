import 'dart:async';

import 'package:pamobile_first_flutter_app/logic/viewmodel/product_view_model.dart';
import 'package:pamobile_first_flutter_app/model/product.dart';

class ProductBloc {
  final ProductViewModel productViewModel = ProductViewModel();
  final productController = StreamController<List<Product>>();
  Stream<List<Product>> get productItems => productController.stream;

  ProductBloc() {
    productController.add(productViewModel.getProducts());
  }
}
