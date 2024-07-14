import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {
  List<int> _favoriteList = [];

  List<int> get favoriteList => _favoriteList;

  void addItem(int itemIndex) {
    _favoriteList.add(itemIndex);
    notifyListeners();
  }

  void removeItem(int itemIndex) {
    _favoriteList.remove(itemIndex);
    notifyListeners();
  }
}
