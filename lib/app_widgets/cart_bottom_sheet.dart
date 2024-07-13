import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/providers/cart_products.dart';

class CartItemsBottomSheet extends ConsumerWidget {
  const CartItemsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartProductsProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Your Cart Items',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                  itemCount: cartList.length,
                  itemBuilder: (ctx, index) {
                    final cartItem = cartList[index];

                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(),
                        ),
                        child: ListTile(
                          leading: Image.network(cartItem.imageUrl),
                          title: Text(cartItem.name),
                          subtitle: Text('${cartItem.weight}'),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
