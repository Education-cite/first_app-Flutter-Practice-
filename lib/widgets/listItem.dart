

import 'package:flutter/material.dart';

class listItem extends StatelessWidget {
  late Color c;
  late String t;
   listItem({Key? key, color,text}) :super(key: key){
    c=color;
    t = text;
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  color: c,
                  child: Text(t),
                ),    
                );
  }
}