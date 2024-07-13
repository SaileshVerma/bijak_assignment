import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // aspectRatio: 4 / 5,
      width: width,
      height: height,
      child: Image.network(
        'https://d1hm90tax3m3th.cloudfront.net/web/vegetables.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
