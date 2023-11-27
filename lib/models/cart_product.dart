import 'package:flutter/material.dart';

class CartProduct extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

  // list of cart items
  final List _productItems = [];

  get productItems => _productItems;

  get shopItems => _shopItems;

  get productPage => null;

  // add item to cart
  void addItemToProduct(int index) {
    _productItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _productItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < productItems.length; i++) {
      totalPrice += double.parse(productItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

  addItemToCart(int index) {}
}
