import 'package:flutter/material.dart';

class TestController extends ChangeNotifier{

List _nameList = ["Tawhide","Taslima"];

List get nameList => _nameList;

void nameChangeMethod(){

notifyListeners();
}

}