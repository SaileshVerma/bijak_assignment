import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String weight;
  final String currencyUnit;
  final double price;
  final int qty;
  final String description;

  const Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.weight,
    required this.currencyUnit,
    required this.price,
    required this.qty,
    required this.description,
  });

  static const empty = Product(
    id: '',
    name: '',
    imageUrl: '',
    weight: '',
    currencyUnit: '',
    price: 0,
    qty: 0,
    description: '',
  );

  Product copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? weight,
    String? currencyUnit,
    double? price,
    int? qty,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      weight: weight ?? this.weight,
      currencyUnit: currencyUnit ?? this.currencyUnit,
      price: price ?? this.price,
      qty: qty ?? this.qty,
      description: description ?? this.description,
    );
  }

  @override
  List get props => [
        id,
        name,
        imageUrl,
        weight,
        currencyUnit,
        price,
        qty,
        description,
      ];
}
