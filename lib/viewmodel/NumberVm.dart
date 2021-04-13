import 'package:flutter/material.dart';

class NumberVm extends ChangeNotifier {
  int number = 0;

  updateNumber(int newNumber) {
    number = newNumber;
    notifyListeners();
  }
}
