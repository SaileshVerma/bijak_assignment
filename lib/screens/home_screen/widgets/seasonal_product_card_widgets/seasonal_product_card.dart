import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card_widgets/add_product_cart_action_button.dart';
import 'package:bijak_assignment/utils/routes/routes_mapping.dart';
import 'package:flutter/material.dart';

class SeasonalProductCard extends StatelessWidget {
  final Product product;

  const SeasonalProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      surfaceTintColor: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.product);
        },
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 96,
                    width: 96,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        product.weight,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        '${product.currencyUnit} ${product.price}',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SeasonalAddToCartActionButton(
                productItem: product,
              ),
            )
          ],
        ),
      ),
    );
  }
}
