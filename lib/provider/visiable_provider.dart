import 'package:flutter/material.dart';

class VisiableProvider with ChangeNotifier {
  bool _toggle = false;
  bool get toggle => _toggle;
  void setToggle() {
    _toggle = !_toggle;
    
    notifyListeners();
  }
}
