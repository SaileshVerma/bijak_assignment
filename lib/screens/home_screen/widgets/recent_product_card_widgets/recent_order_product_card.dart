import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/recent_product_card_widgets/recent_order_add_cart_action_button.dart';
import 'package:bijak_assignment/utils/routes/routes_mapping.dart';
import 'package:flutter/material.dart';

class RecentOrderProductCard extends StatelessWidget {
  final Product product;

  const RecentOrderProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      surfaceTintColor: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(6.0),
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.pushNamed(context, Routes.product);
        },
        child: Ink(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 96,
                    width: 96,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 2.0),
                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 2.0),
                    child: Text(
                      product.weight,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 2.0),
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
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: AddProductActionButton(
                    toShowAddButton: false,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
