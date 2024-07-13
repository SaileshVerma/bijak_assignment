import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bijak_assignment/providers/cart_products.dart';
import 'package:bijak_assignment/providers/products.dart';
import 'package:bijak_assignment/providers/recently_orders.dart';
import 'package:bijak_assignment/models/product.dart';

class ProductDetailNotifier
    extends AutoDisposeFamilyAsyncNotifier<Product, String> {
  @override
  FutureOr<Product> build(String arg) {
    // _productController = ProductController();

    return fetchProductDetails(arg);
  }

  Future<Product> fetchProductDetails(String id) async {
    return getProductDetails(productId: id);
  }

  Future<Product> getProductDetails({required String productId}) async {
    await Future.delayed(const Duration(seconds: 5));

    final recentProductList =
        ref.read(productsProvider.notifier).state.asData?.value ?? [];
    final sampleProductList =
        ref.read(recentlyOrdersProvider.notifier).state.asData?.value ?? [];
    final Set<Product> combinedSet = {};
    combinedSet.addAll(recentProductList);
    combinedSet.addAll(sampleProductList);

    final totalProducts = combinedSet.toList();

    final getProduct =
        totalProducts.firstWhere((element) => element.id == productId);

    return getProduct;
  }

  void addProductToCart({
    required Product product,
  }) {
    ref.read(productsProvider.notifier).increaseQtyByOne(productId: product.id);
    ref
        .read(recentlyOrdersProvider.notifier)
        .increaseQtyByOne(productId: product.id);
    ref.read(cartProductsProvider.notifier).addProductToCart(product: product);

    final prevQty = product.qty;
    final currentState = state.asData?.value ?? Product.empty;

    state = AsyncData(currentState.copyWith(qty: prevQty + 1));
  }

  void removeProductFromCart({
    required Product product,
  }) {
    ref.read(productsProvider.notifier).decreaseQtyByOne(productId: product.id);
    ref
        .read(recentlyOrdersProvider.notifier)
        .decreaseQtyByOne(productId: product.id);

    final prevQty = product.qty;
    if (prevQty == 0) {
      return;
    }
    final currentState = state.asData?.value ?? Product.empty;

    state = AsyncData(currentState.copyWith(qty: prevQty - 1));
    ref
        .read(cartProductsProvider.notifier)
        .removeProductFromCart(product: product);
  }

  void decreaseQtyByOne() {
    final product = state.asData?.value ?? Product.empty;

    final previousQty = product.qty;

    if (previousQty == 0) {
      return;
    }
    final Product productItem = product.copyWith(
      qty: previousQty - 1,
    );

    state = AsyncData(productItem);
  }

  void increaseQtyByOne() {
    final product = state.asData?.value ?? Product.empty;

    final previousQty = product.qty;

    if (previousQty == 0) {
      return;
    }
    final Product productItem = product.copyWith(
      qty: previousQty + 1,
    );

    state = AsyncData(productItem);
  }
}

final productDetailProvider = AsyncNotifierProvider.autoDispose
    .family<ProductDetailNotifier, Product, String>(
  ProductDetailNotifier.new,
);
