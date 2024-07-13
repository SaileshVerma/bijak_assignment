import 'dart:async';

import 'package:bijak_assignment/controllers/products_controller.dart';
import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/providers/cart_products.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentlyOrdersNotifier extends AutoDisposeAsyncNotifier<List<Product>> {
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

  void addProductToCart({
    required Product product,
  }) {
    final currentList = state.asData?.value ?? [];

    if (didProductAlreadyExists(productId: product.id)) {
      //since the product] exists will add qty by +1;
      final previousQty = product.qty;
      final Product productItem = product.copyWith(
        qty: previousQty + 1,
      );

      final itemIndex =
          currentList.indexWhere((element) => element.id == productItem.id);

      currentList[itemIndex] = productItem;
    } else {
      currentList.add(product);
    }

    ref.read(cartProductsProvider.notifier).addProductToCart(product: product);
    state = AsyncData(currentList);
  }

  void removeProductFromCart({
    required Product product,
  }) {
    final currentList = state.asData?.value ?? [];

    if (didProductAlreadyExists(productId: product.id)) {
      //since the product] exists will add qty by +1;
      final previousQty = product.qty;
      final Product productItem = product.copyWith(
        qty: previousQty - 1,
      );
      final itemIndex =
          currentList.indexWhere((element) => element.id == productItem.id);
      currentList[itemIndex] = productItem;
    } else {
      currentList.add(product);
    }

    ref
        .read(cartProductsProvider.notifier)
        .removeProductFromCart(product: product);
    state = AsyncData(currentList);
  }

  bool didProductAlreadyExists({required String productId}) {
    return (state.asData?.value ?? [])
        .any((element) => element.id == productId);
  }
}

final recentlyOrdersProvider =
    AsyncNotifierProvider.autoDispose<RecentlyOrdersNotifier, List<Product>>(
  RecentlyOrdersNotifier.new,
);
