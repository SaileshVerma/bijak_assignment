import 'package:flutter/material.dart';

class AddProductActionButton extends StatelessWidget {
  final bool toShowAddButton;

  const AddProductActionButton({
    required this.toShowAddButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return toShowAddButton
        ? InkWell(
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
                    vertical: 2.0,
                    horizontal: 8.0,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              CustomActionTextButton(
                onTap: () {},
                title: '+',
              ),
            ],
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
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(
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
