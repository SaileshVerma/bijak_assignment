import 'package:bijak_assignment/providers/products.dart';
import 'package:bijak_assignment/providers/recently_orders.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/recent_product_card_widgets/recent_order_product_card.dart';
import 'package:bijak_assignment/utils/constant/sample_product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentOrdersList extends ConsumerWidget {
  const RecentOrdersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyOrdersStateProvider = ref.watch(recentlyOrdersProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recently Ordered',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 200,
          width: double.maxFinite,
          child: recentlyOrdersStateProvider.when(
            data: (data) {
              final productItems = data;
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productItems.length,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: RecentOrderProductCard(
                        product: productItems[index],
                      ),
                    );
                  });
            },
            error: (error, _) => Text('$error'),
            loading: () => const CircularProgressIndicator(),
          ),
        )
      ],
    );
  }
}
