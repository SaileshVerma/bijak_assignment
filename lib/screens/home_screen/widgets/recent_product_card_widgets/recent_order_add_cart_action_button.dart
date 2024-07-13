import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/providers/recently_orders.dart';
import 'package:bijak_assignment/models/product.dart';

class AddProductActionButton extends ConsumerWidget {
  final Product productItem;
  final bool toShowAddButton;

  const AddProductActionButton({
    required this.productItem,
    required this.toShowAddButton,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return toShowAddButton
        ? InkWell(
            borderRadius: BorderRadius.circular(18.0),
            splashColor: Colors.green.shade100,
            onTap: () {
              ref
                  .read(recentlyOrdersProvider.notifier)
                  .addProductToCart(product: productItem);
            },
            child: Ink(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: Colors.green,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  child: Text(
                    'ADD +',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
                      .read(recentlyOrdersProvider.notifier)
                      .removeProductFromCart(product: productItem);
                },
                title: '-',
              ),
              Container(
                color: Colors.green.shade700,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                    horizontal: 8.0,
                  ),
                  child: Text(
                    '${productItem.qty}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              CustomActionTextButton(
                onTap: () {
                  ref
                      .read(recentlyOrdersProvider.notifier)
                      .addProductToCart(product: productItem);
                },
                title: '+',
              ),
            ],
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
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
