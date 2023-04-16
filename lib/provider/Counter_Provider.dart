import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{
  var _count = 0;

  int get count=> _count;


  void incrementcount(){
    _count++;
    notifyListeners();
  }


  void decrementcount(){
    _count--;
    notifyListeners();
  }






}