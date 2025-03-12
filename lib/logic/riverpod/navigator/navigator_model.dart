import 'package:flutter/material.dart';

class NavigatorModel extends ChangeNotifier {
  int index;
  NavigatorModel({required this.index});

  void currentIndex(int newIndex){
    index = newIndex;
    notifyListeners();
  }

}