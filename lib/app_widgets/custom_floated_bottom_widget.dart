import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bijak_assignment/app_widgets/cart_bottom_sheet.dart';
import 'package:bijak_assignment/providers/cart_products.dart';

class FloatedCartWidget extends ConsumerWidget {
  const FloatedCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final cartNotifierProvider = ref.watch(cartProductsProvider);

    return Visibility(
      visible: cartNotifierProvider.isNotEmpty,
      child: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheet(
                onClosing: () {},
                builder: (ctx) {
                  return const CartItemsBottomSheet();
                },
              );
            },
          );
        },
        label: SizedBox(
          width: width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your Cart Items'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '${cartNotifierProvider.length} item added',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const Text(
                        ' | ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Total: Rs.${ref.watch(cartProductsProvider.notifier).getTotalPrice()}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return BottomSheet(
                            onClosing: () {},
                            builder: (ctx) {
                              return const CartItemsBottomSheet();
                            },
                          );
                        },
                      );
                    },
                    child: const Text(
                      'View Cart >',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
