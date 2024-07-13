import 'package:bijak_assignment/models/product.dart';
import 'package:bijak_assignment/providers/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddProductToCartActionButton extends ConsumerWidget {
  final Product productItem;

  const AddProductToCartActionButton({
    required this.productItem,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: productItem.qty <= 0
          ? InkWell(
              splashColor: Colors.green.shade100,
              onTap: () {
                ref
                    .read(productDetailProvider(productItem.id).notifier)
                    .addProductToCart(product: productItem);
              },
              child: Ink(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                      color: Colors.green,
                      width: 1.2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'ADD TO CART ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.green,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          : Row(
              children: [
                CustomActionTextButton(
                  onTap: () {
                    ref
                        .read(productDetailProvider(productItem.id).notifier)
                        .removeProductFromCart(
                          product: productItem,
                        );
                  },
                  title: '-',
                ),
                Container(
                  color: Colors.green.shade700,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Text(
                      '${productItem.qty}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                CustomActionTextButton(
                  onTap: () {
                    ref
                        .read(productDetailProvider(productItem.id).notifier)
                        .addProductToCart(
                          product: productItem,
                        );
                  },
                  title: '+',
                ),
              ],
            ),
    );
  }
}

class CustomActionTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomActionTextButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.0),
      splashColor: Colors.green.shade100,
      onTap: onTap,
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Colors.green,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
