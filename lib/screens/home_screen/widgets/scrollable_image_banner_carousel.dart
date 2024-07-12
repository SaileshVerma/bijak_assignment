import 'package:bijak_assignment/utils/constant/carousel_banner_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
          return SizedBox(
            width: width,
            height: height,
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
