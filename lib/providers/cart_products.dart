import 'package:bijak_assignment/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartProductsNotifier extends StateNotifier<List<Product>> {
  CartProductsNotifier(super.state);
}

final cartProductsProvider =
    StateNotifierProvider<CartProductsNotifier, List<Product>>(
  (ref) => CartProductsNotifier([]),
);
