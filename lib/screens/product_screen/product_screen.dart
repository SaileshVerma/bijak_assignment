import 'package:bijak_assignment/providers/product_details.dart';
import 'package:flutter/material.dart';
import 'package:bijak_assignment/app_widgets/custom_floated_bottom_widget.dart';
import 'package:bijak_assignment/screens/product_screen/widgets/product_details.dart';
import 'package:bijak_assignment/screens/product_screen/widgets/product_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductScreen extends ConsumerWidget {
  final String productId;

  const ProductScreen({
    required this.productId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = (width * 3 * 0.9) / 2;

    final productDetailNotifierProvider =
        ref.watch(productDetailProvider(productId));

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        title: const Text(
          'Product Name',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: productDetailNotifierProvider.when(
        data: (data) {
          final productItem = data;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(
                width: width,
                imageUrl: productItem.imageUrl,
                height: height,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ProductDetails(
                        product: productItem,
                      ),
                    ),
                    // SeasonalAddToCartActionButton(
                    //   toShowAddButton: false,
                    // )
                  ],
                ),
              ),
            ],
          );
        },
        error: (error, _) => Text('$error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatedCartWidget(),
    );
  }
}
