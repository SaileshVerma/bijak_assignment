import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card_widgets/add_product_cart_action_button.dart';
import 'package:flutter/material.dart';
import 'package:bijak_assignment/app_widgets/custom_floated_bottom_widget.dart';
import 'package:bijak_assignment/screens/product_screen/widgets/product_details.dart';
import 'package:bijak_assignment/screens/product_screen/widgets/product_image.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card_widgets/seasonal_product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = (width * 3 * 0.9) / 2;

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
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(
            width: width,
            height: height,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ProductDetails(),
                ),
                // SeasonalAddToCartActionButton(
                //   toShowAddButton: false,
                // )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatedCartWidget(),
    );
  }
}
