import 'package:flutter/widgets.dart';

class TabsProvider with ChangeNotifier {

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setCurrentIndex(int currentIndex) {
    this._currentIndex = currentIndex;
    notifyListeners();
  }

}