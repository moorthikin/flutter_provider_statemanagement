import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _theme = ThemeMode.light;

  ThemeMode get theme => _theme;

  void darkTheme(theme) {
    _theme = theme;
    notifyListeners();
  }
}
