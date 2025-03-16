
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = ChangeNotifierProvider<CounterNotifier>((ref) {
  return CounterNotifier(counter: 0);
});

class CounterNotifier extends ChangeNotifier{
  int counter; 
  CounterNotifier({required this.counter});

  void incremetn(){
    counter++;
    notifyListeners();
  }

  void decrement(){
    if(counter > 0) {
      counter--;
    }
    notifyListeners();
  }
}