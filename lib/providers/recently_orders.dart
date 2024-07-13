import 'dart:async';

import 'package:bijak_assignment/controllers/products_controller.dart';
import 'package:bijak_assignment/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentlyOrdersNotifier extends AsyncNotifier<List<Product>> {
  late ProductController _productController;

  @override
  FutureOr<List<Product>> build() {
    _productController = ProductController();

    return fetchRecentlyOrderedProducts();
  }

  Future<List<Product>> fetchRecentlyOrderedProducts() async {
    return _productController.fetchRecentlyPurchasedProducts();
  }

  Product getProductById({
    required String productId,
  }) {
    return state.asData?.value
            .firstWhere((element) => element.id == productId) ??
        Product.empty;
  }
}

final recentlyOrdersProvider =
    AsyncNotifierProvider<RecentlyOrdersNotifier, List<Product>>(
  RecentlyOrdersNotifier.new,
);
