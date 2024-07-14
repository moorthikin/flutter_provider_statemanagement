import 'package:flutter/foundation.dart';

class ExampleoneProvider with ChangeNotifier {
  double _intiValue = 0.1;

  double get initValue => _intiValue;

  void setValue(double val) {
    _intiValue = val;
    notifyListeners();
  }
}
