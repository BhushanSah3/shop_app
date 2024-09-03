import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> product) {
    cart.add(product);
    notifyListeners();  //tells the listners
  }

  void removeproduct(Map<String, dynamic> product) {
    cart.remove(product);
    notifyListeners();  //tells the listners

  }

}
