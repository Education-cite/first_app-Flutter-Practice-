import 'package:flutter/material.dart';

class TestController extends ChangeNotifier{
  final textController = TextEditingController();

//List _nameList = ["Tawhide","Taslima"];

//List get nameList => _nameList;
String get name => textController.text;

void nameChangeMethod(){
  textController.text;

notifyListeners();
}

}