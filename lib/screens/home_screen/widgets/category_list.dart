import 'package:flutter/material.dart';

import 'package:bijak_assignment/utils/constant/data_images.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            width: double.maxFinite,
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemCategories.length,
              itemBuilder: (ctx, index) {
                final item = itemCategories[index];
                return Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 24,
                      backgroundImage: NetworkImage(item.imageUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: SizedBox(
                        width: 80,
                        child: Text(
                          item.title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
