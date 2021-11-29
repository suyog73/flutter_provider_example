import 'package:flutter/cupertino.dart';

class FruitProvider extends ChangeNotifier {
  String _fruit = 'unknown';
  String get fruit => _fruit;

  void updateFruit(newFruit) {
    _fruit = newFruit;
    notifyListeners();
  }
}
