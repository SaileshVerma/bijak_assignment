import 'package:bijak_assignment/utils/routes/routes_mapping.dart';
import 'package:flutter/material.dart';

class SeasonalProductCard extends StatelessWidget {
  const SeasonalProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.product);
      },
      child: Card(
        elevation: 3,
        surfaceTintColor: Colors.white,
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 96,
                    width: 96,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.network(
                        "https://d1hm90tax3m3th.cloudfront.net/web/vegetables.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        'Mango',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        '2- 4 kg',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0, left: 2.0),
                      child: Text(
                        'Rs 200',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: AddToCartActionButton(),
            )
          ],
        ),
      ),
    );
  }
}

class AddToCartActionButton extends StatelessWidget {
  const AddToCartActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: InkWell(
        splashColor: Colors.green.shade100,
        onTap: () {},
        child: Ink(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: Colors.green,
                width: 1.2,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'ADD TO CART ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.green,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
