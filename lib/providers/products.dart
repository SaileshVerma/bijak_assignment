import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/controllers/products_controller.dart';
import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/providers/cart_products.dart';
import 'package:bijak_assignment/providers/product_details.dart';
import 'package:bijak_assignment/providers/recently_orders.dart';

class ProductsNotifier extends AsyncNotifier<List<Product>> {
  late ProductController _productController;

  @override
  FutureOr<List<Product>> build() {
    _productController = ProductController();

    return fetchInitialAllProducts();
  }

  FutureOr<List<Product>> fetchInitialAllProducts() async {
    return _productController.fetchAllProducts();
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
      ref
          .read(recentlyOrdersProvider.notifier)
          .increaseQtyByOne(productId: product.id);
      ref
          .read(productDetailProvider(productItem.id).notifier)
          .increaseQtyByOne();

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
      ref
          .read(recentlyOrdersProvider.notifier)
          .decreaseQtyByOne(productId: product.id);
      ref
          .read(productDetailProvider(productItem.id).notifier)
          .decreaseQtyByOne();
    } else {
      currentList.add(product);
    }

    ref
        .read(cartProductsProvider.notifier)
        .removeProductFromCart(product: product);
    state = AsyncData(currentList);
  }

  void increaseQtyByOne({required String productId}) {
    final currentList = state.asData?.value ?? [];

    final product = currentList.firstWhere(
      (element) => element.id == productId,
      orElse: () {
        return Product.empty;
      },
    );

    if (product.id.isEmpty) {
      return;
    }

    final previousQty = product.qty;
    final Product productItem = product.copyWith(
      qty: previousQty + 1,
    );
    final itemIndex =
        currentList.indexWhere((element) => element.id == productItem.id);
    currentList[itemIndex] = productItem;

    state = AsyncData(currentList);
  }

  void decreaseQtyByOne({required String productId}) {
    final currentList = state.asData?.value ?? [];

    final product = currentList.firstWhere(
      (element) => element.id == productId,
      orElse: () {
        return Product.empty;
      },
    );

    if (product.id.isEmpty) {
      return;
    }

    final previousQty = product.qty;
    if (previousQty == 0) {
      return;
    }
    final Product productItem = product.copyWith(
      qty: previousQty - 1,
    );
    final itemIndex =
        currentList.indexWhere((element) => element.id == productItem.id);
    currentList[itemIndex] = productItem;

    state = AsyncData(currentList);
  }

  bool didProductAlreadyExists({required String productId}) {
    return (state.asData?.value ?? [])
        .any((element) => element.id == productId);
  }
}

final productsProvider = AsyncNotifierProvider<ProductsNotifier, List<Product>>(
  ProductsNotifier.new,
);
