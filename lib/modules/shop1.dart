import 'package:ecommerce_flutter/modules/product1.dart';
import 'package:flutter/material.dart';

class Shop1 extends ChangeNotifier {
  final List<Product1> _shop = [
    Product1(
        name: 'AR WATCH',
        price: 48,
        description: 'High Quality Watch with Premium AR logo',
        imagePath: 'assets/images/watch.jpg'),
    Product1(
        name: 'AR HEADPHONES',
        price: 99.99,
        description:
            'Premium Quality with high Quality Sound. Now no one distrubs you anymore. Buy now and Enjoy the Music!',
        imagePath: 'assets/images/headphones.jpg'),
    Product1(
        name: 'AR WATER BOTTLE',
        price: 12.50,
        description:
            'Enjoy Fresh and cold water in our Water Bottle. The Bottle contains AR Premium logo and Sign.',
        imagePath: 'assets/images/water_bottle.jpg'),
    Product1(
        name: 'AR BAG',
        price: 120,
        description:
            'High Quality Bag with minimum price. The more Flexible and Stylish AR Bag.',
        imagePath: 'assets/images/bag.jpg')
  ];

  List<Product1> _cart = [];

  List<Product1> get shop => _shop;

  List<Product1> get cart => _cart;

  void addtToCart(Product1 item) {
    _cart.add(item);

    notifyListeners();
  }

  void removeFromCart(Product1 item) {
    _cart.remove(item);

    notifyListeners();
  }
}
