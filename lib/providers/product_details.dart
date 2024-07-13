import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/controllers/products_controller.dart';
import 'package:bijak_assignment/models/product.dart';

class ProductDetailNotifier
    extends AutoDisposeFamilyAsyncNotifier<Product, String> {
  late ProductController _productController;

  @override
  FutureOr<Product> build(String arg) {
    _productController = ProductController();

    return fetchProductDetails(arg);
  }

  Future<Product> fetchProductDetails(String id) async {
    return _productController.getProductDetails(productId: id);
  }
}

final productDetailProvider = AsyncNotifierProvider.autoDispose
    .family<ProductDetailNotifier, Product, String>(
  ProductDetailNotifier.new,
);
