import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_product_card.dart';
import 'package:flutter/material.dart';

class SeasonalProductsList extends StatelessWidget {
  const SeasonalProductsList({super.key});

  @override
  Widget build(BuildContext context) {
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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return const SeasonalProductCard();
          },
        )
      ],
    );
  }
}
