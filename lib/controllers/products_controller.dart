import 'dart:async';
import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/utils/constant/sample_product_list_data.dart';

class ProductController {
  FutureOr<List<Product>> fetchAllProducts() async {
    await Future.delayed(const Duration(seconds: 5));

    return [...sampleProductData];
  }

  FutureOr<List<Product>> fetchRecentlyPurchasedProducts() async {
    await Future.delayed(const Duration(seconds: 5));

    return [...recentOrdersList];
  }

  // Product getProductById({required String productId}) {

  //   return
  // }
}
