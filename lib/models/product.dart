class Product {
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
}
