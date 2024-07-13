import 'package:flutter/material.dart';

class SeasonalAddToCartActionButton extends StatelessWidget {
  final bool toShowAddButton;

  const SeasonalAddToCartActionButton({
    required this.toShowAddButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
      child: toShowAddButton
          ? InkWell(
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
            )
          : Row(
              children: [
                CustomActionTextButton(
                  onTap: () {},
                  title: '-',
                ),
                Container(
                  color: Colors.green.shade700,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                CustomActionTextButton(
                  onTap: () {},
                  title: '+',
                ),
              ],
            ),
    );
  }
}

class CustomActionTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomActionTextButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.0),
      splashColor: Colors.green.shade100,
      onTap: onTap,
      child: Ink(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Colors.green,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
