import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String image;
  final int price;
  int quantity;

  CartItem(this.name, this.image, this.price, this.quantity);
}

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void updateItemQuantity(CartItem item, int quantity) {
    final index = _items.indexOf(item);
    if (index != -1) {
      _items[index].quantity = quantity;
      notifyListeners();
    }
  }

  int get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.price * item.quantity);
  }

  int get totalQuantity {
    return _items.fold(0, (sum, item) => sum + item.quantity);
  }
}
