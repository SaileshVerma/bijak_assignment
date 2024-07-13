import 'package:bijak_assignment/models/currency_model.dart';
import 'package:bijak_assignment/models/product.dart';

const sampleProductData = [
  Product(
    id: '1',
    name: 'Mango',
    weight: '2kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/871c60f0-bbe2-4b0e-a349-b60cb9052054.jpg?ts=1719824300',
    currencyUnit: CurrencyUnit.rupees,
    price: 150.0,
    qty: 0,
    description:
        'Indulge in the luscious taste of our fresh, handpicked mangoes! Bursting with natural sweetness and vibrant flavor, these juicy delights are perfect for snacking, smoothies, or desserts. Savor the essence of summer!',
  ),
  Product(
    id: '2',
    name: 'Banana',
    weight: '2kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=1080/app/assets/products/sliding_images/jpeg/b2dd373b-7406-443a-9676-4f190c2545ba.jpg?ts=1711473526',
    currencyUnit: CurrencyUnit.rupees,
    price: 90.0,
    qty: 0,
    description:
        'Enjoy the creamy, sweet goodness of our fresh bananas! Perfect for snacking, smoothies, or baking, these nutrient-rich fruits are a convenient and healthy choice for any time of day. Taste the natural delight!',
  ),
  Product(
    id: '3',
    name: 'Tomato',
    weight: '2.5kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/5c877675-7a02-4bfa-ab22-38849ebe2d76.jpg?ts=1712461122',
    currencyUnit: CurrencyUnit.rupees,
    price: 200.0,
    qty: 0,
    description:
        'Savor the garden-fresh flavor of our ripe, juicy tomatoes! Perfect for salads, sauces, or snacking, these vibrant tomatoes add a burst of natural sweetness and rich taste to any dish. Enjoy farm-fresh quality!',
  ),
  Product(
    id: '4',
    name: 'Grapes',
    weight: '1.5kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=1080/app/assets/products/sliding_images/jpeg/50480c3d-47a3-46cd-b2db-0422dbdf9c03.jpg?ts=1712461139',
    currencyUnit: CurrencyUnit.rupees,
    price: 250.0,
    qty: 0,
    description:
        'Delight in the juicy sweetness of our fresh grapes! Perfect for snacking, salads, or desserts, these crisp and flavorful grapes are a refreshing and healthy treat for any time of day. Taste the freshness!',
  ),
  Product(
    id: '5',
    name: 'Potato',
    weight: '5kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=1080/app/assets/products/sliding_images/jpeg/64a608c9-4787-41e9-be9c-d756c1a240d7.jpg?ts=1712461085',
    currencyUnit: CurrencyUnit.rupees,
    price: 300.0,
    qty: 0,
    description:
        'Discover the versatile goodness of our fresh potatoes! Perfect for roasting, mashing, or frying, these hearty spuds bring rich flavor and texture to any dish. Enjoy farm-fresh quality in every bite!',
  ),
];

const recentOrdersList = [
  Product(
    id: '6',
    name: 'Lady Finger',
    weight: '1kg',
    imageUrl:
        'https://cdn.grofers.com/app/assets/products/sliding_images/jpeg/f29294f7-15b6-4bf0-97ef-4788dfc731da.jpg?ts=1712461112',
    currencyUnit: CurrencyUnit.rupees,
    price: 80.0,
    qty: 0,
    description:
        'Enjoy the tender, crisp taste of our fresh lady fingers! Perfect for stir-fries, curries, or snacks, these vibrant green veggies add a delightful flavor and texture to your meals.',
  ),
  Product(
    id: '7',
    name: 'Onions',
    weight: '6kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/94b14546-7689-4496-a5d7-7d26f34d1425.jpg?ts=1712461116',
    currencyUnit: CurrencyUnit.rupees,
    price: 500.0,
    qty: 0,
    description:
        'Experience the bold, savory flavor of our fresh onions! Ideal for cooking, salads, or garnishing, these versatile onions add depth and richness to any dish. Enjoy the farm-fresh quality in every bite!',
  ),
  Product(
    id: '1',
    name: 'Mango',
    weight: '2kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/871c60f0-bbe2-4b0e-a349-b60cb9052054.jpg?ts=1719824300',
    currencyUnit: CurrencyUnit.rupees,
    price: 150.0,
    qty: 0,
    description:
        'Indulge in the luscious taste of our fresh, handpicked mangoes! Bursting with natural sweetness and vibrant flavor, these juicy delights are perfect for snacking, smoothies, or desserts. Savor the essence of summer!',
  ),
  Product(
    id: '5',
    name: 'Potato',
    weight: '5kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=1080/app/assets/products/sliding_images/jpeg/64a608c9-4787-41e9-be9c-d756c1a240d7.jpg?ts=1712461085',
    currencyUnit: CurrencyUnit.rupees,
    price: 300.0,
    qty: 0,
    description:
        'Discover the versatile goodness of our fresh potatoes! Perfect for roasting, mashing, or frying, these hearty spuds bring rich flavor and texture to any dish. Enjoy farm-fresh quality in every bite!',
  ),
  Product(
    id: '4',
    name: 'Grapes',
    weight: '1.5kg',
    imageUrl:
        'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=1080/app/assets/products/sliding_images/jpeg/50480c3d-47a3-46cd-b2db-0422dbdf9c03.jpg?ts=1712461139',
    currencyUnit: CurrencyUnit.rupees,
    price: 250.0,
    qty: 0,
    description:
        'Delight in the juicy sweetness of our fresh grapes! Perfect for snacking, salads, or desserts, these crisp and flavorful grapes are a refreshing and healthy treat for any time of day. Taste the freshness!',
  ),
];
