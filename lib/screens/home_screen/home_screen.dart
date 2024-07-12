import 'package:flutter/material.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/category_list.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/scrollable_image_banner_carousel.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                maxRadius: 14,
                backgroundColor: Colors.white,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const Text(
              'Bijak',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: SearchField(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: ScrollableImageBanner(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: CategoryList(),
          ),
        ],
      ),
    );
  }
}
