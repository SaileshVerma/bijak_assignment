import 'dart:async';
import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/utils/constant/sample_product_list_data.dart';

class ProductController {
  Future<List<Product>> fetchAllProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    return [...sampleProductData];
  }

  Future<List<Product>> fetchRecentlyPurchasedProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    return [...recentOrdersList];
  }

  // Product getProductById({required String productId}) {

  //   return
  // }
}
