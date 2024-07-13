import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Product Name',
            maxLines: 1,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            'Product Weight',
            maxLines: 1,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            'Product PRice',
            maxLines: 1,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: SizedBox(
            width: width * 0.5,
            child: Text(
              'Product DESCd ds sd sd s ds  sd s ds d sd s ds ds d sd s ds s d d s ds s  dsd sd das ds dsd sd s sd sd   ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
