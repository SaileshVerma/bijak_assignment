import 'dart:async';
import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/utils/constant/sample_product_list_data.dart';

class ProductController {
  Future<List<Product>> fetchAllProducts() async {
    await Future.delayed(const Duration(seconds: 5));

    return [...sampleProductData];
  }

  Future<List<Product>> fetchRecentlyPurchasedProducts() async {
    await Future.delayed(const Duration(seconds: 5));

    return [...recentOrdersList];
  }

  Future<Product> getProductDetails({required String productId}) async {
    final totalProducts = [...recentOrdersList, ...sampleProductData];
    await Future.delayed(const Duration(seconds: 5));

    final getProduct =
        totalProducts.firstWhere((element) => element.id == productId);

    return getProduct;
  }

  // Product getProductById({required String productId}) {

  //   return
  // }
}
