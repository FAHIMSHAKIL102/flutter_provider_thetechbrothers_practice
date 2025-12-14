import 'package:flutter/material.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _selectItem = [];
  List<int> get selectedItem => _selectItem;

  void addItem(int value) {
    _selectItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    _selectItem.removeAt(value);
    notifyListeners();
  }
}
