import 'package:flutter/material.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/home_screen_appbar.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/recent_orders_list.dart';
import 'package:bijak_assignment/screens/home_screen/widgets/seasonal_products_list.dart';
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
        title: HomeScreenAppBar(),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
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
          Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: RecentOrdersList(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: SeasonalProductsList(),
          ),
        ],
      ),
    );
  }
}
