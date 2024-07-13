import 'package:bijak_assignment/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartProductsNotifier extends StateNotifier<List<Product>> {
  Ref ref;

  CartProductsNotifier(this.ref) : super([]);

  void addProductToCart({
    required Product product,
  }) {
    final currentList = [...state];

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

    state = [...currentList];
  }

  void removeProductFromCart({
    required Product product,
  }) {
    final currentList = [...state];

    if (didProductAlreadyExists(productId: product.id)) {
      //since the product] exists will add qty by -1;
      final previousQty = product.qty;
      if (previousQty == 1) {
        currentList.removeWhere((element) => element.id == product.id);
        state = [...currentList];
        return;
      }
      final Product productItem = product.copyWith(
        qty: previousQty - 1,
      );
      final itemIndex =
          currentList.indexWhere((element) => element.id == productItem.id);
      currentList[itemIndex] = productItem;
    } else {
      currentList.add(product);
    }

    state = [...currentList];
  }

  bool didProductAlreadyExists({required String productId}) {
    return state.any((element) => element.id == productId);
  }

  double getTotalPrice() {
    double finalPrice = 0.0;
    for (var element in state) {
      finalPrice = finalPrice + element.price * element.qty;
    }

    return finalPrice;
  }
}

final cartProductsProvider =
    StateNotifierProvider<CartProductsNotifier, List<Product>>(
  (ref) => CartProductsNotifier(ref),
);
