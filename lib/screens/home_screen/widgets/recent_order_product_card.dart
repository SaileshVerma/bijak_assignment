import 'package:bijak_assignment/utils/routes/routes_mapping.dart';
import 'package:flutter/material.dart';

class RecentOrderProductCard extends StatelessWidget {
  const RecentOrderProductCard({
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
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 96,
                  width: 96,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.network(
                      "https://d1hm90tax3m3th.cloudfront.net/web/vegetables.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0, left: 2.0),
                  child: Text(
                    'Mango',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0, left: 2.0),
                  child: Text(
                    '2- 4 kg',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const Padding(
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
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: AddProductActionButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddProductActionButton extends StatelessWidget {
  const AddProductActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18.0),
      splashColor: Colors.green.shade100,
      onTap: () {},
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(
              color: Colors.green,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Text(
              'ADD +',
              style: TextStyle(
                color: Colors.green,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
