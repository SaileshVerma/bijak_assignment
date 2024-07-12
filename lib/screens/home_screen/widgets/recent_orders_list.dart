import 'package:bijak_assignment/screens/home_screen/widgets/recent_order_product_card.dart';
import 'package:flutter/material.dart';

class RecentOrdersList extends StatelessWidget {
  const RecentOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: RecentOrderProductCard(),
              );
            },
          ),
        )
      ],
    );
  }
}
