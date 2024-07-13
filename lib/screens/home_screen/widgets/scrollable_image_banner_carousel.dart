import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:bijak_assignment/utils/constant/carousel_banner_images.dart';

class ScrollableImageBanner extends StatelessWidget {
  const ScrollableImageBanner({super.key});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = (width * 3) / 2;

    return SizedBox(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          animateToClosest: true,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: width,
            height: height,
            color: Colors.grey.shade100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
