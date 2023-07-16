import 'package:flutter/material.dart';

class chairController with ChangeNotifier {
  PageController _pageController = PageController();

  int _currentpageindex = 0;

  PageController get pageController => _pageController;
  int get currentpageindex => _currentpageindex;

  void goToPage(int index) {
    _currentpageindex = index;
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 900), curve: Curves.ease);
    notifyListeners();
  }

  void setcurrentpageindex(int index) {
    _currentpageindex = index;
    notifyListeners();
  }

  int _num = 0;
  bool _ispressed = false;
  bool _addpressed = false;

  bool get ispressed => _ispressed;
  bool get addpressed => _addpressed;

  int get num => _num;
  void addnum() {
    _num++;
    notifyListeners();
  }

  void removenum() {
    if (_num > 0) {
      _num--;
    }
    notifyListeners();
  }

  void pressed() {
    _ispressed = !_ispressed;
    notifyListeners();
  }

  void pressedadd() {
    _addpressed = !_addpressed;
    notifyListeners();
  }
}
