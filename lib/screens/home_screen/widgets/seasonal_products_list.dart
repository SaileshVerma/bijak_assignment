import 'package:bijak_assignment/providers/cart_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bijak_assignment/providers/products.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card_widgets/seasonal_product_card.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card_widgets/seasonal_product_shimmer_loader.dart';

class SeasonalProductsList extends ConsumerWidget {
  const SeasonalProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsStateProvider = ref.watch(productsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Seasonal Products',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        productsStateProvider.when(
          data: (data) {
            final productList = data;

            return Padding(
              padding: EdgeInsets.only(
                bottom:
                    ref.watch(cartProductsProvider).isNotEmpty ? 80.0 : 16.0,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productList.length,
                itemBuilder: (ctx, index) {
                  return SeasonalProductCard(
                    product: productList[index],
                  );
                },
              ),
            );
          },
          error: (error, _) => Text('$error'),
          loading: () => const SeasonalProductsShimmerLoader(),
        )
      ],
    );
  }
}
