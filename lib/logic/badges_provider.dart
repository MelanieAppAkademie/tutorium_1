import 'package:flutter/material.dart';

class BadgesProvider extends ChangeNotifier{
  int _counter = 0;


  int get counter => _counter;

  void increment(){
    _counter++;
    notifyListeners();
  }

  void setToZero(){
    _counter = 0;
  }

}