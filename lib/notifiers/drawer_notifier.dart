import 'package:flutter/material.dart';

class DrawerNotifier with ChangeNotifier {
  int _currentDrawer = 0;

  int get getCurrentDrawer => _currentDrawer;

  void setCurrentDrawer(int index) {
    _currentDrawer = index;
    notifyListeners();
  }


}
