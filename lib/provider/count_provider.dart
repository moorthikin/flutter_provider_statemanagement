import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _count = 100;

  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}
