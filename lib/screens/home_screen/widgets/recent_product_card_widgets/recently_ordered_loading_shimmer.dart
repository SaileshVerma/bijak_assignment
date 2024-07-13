import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RecentlyOrderShimmerLoader extends StatelessWidget {
  const RecentlyOrderShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (ctx, i) => Shimmer.fromColors(
        baseColor: Colors.grey.shade200,
        highlightColor: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
            width: 96,
            // height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
      ),
    );
  }
}
