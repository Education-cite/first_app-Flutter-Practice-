

import 'package:flutter/material.dart';

class listItem extends StatelessWidget {
 // late Color c;
  late Color color;
 // late String t;
  late String text;


  //  listItem({Key? key, color,text}) :super(key: key){
  //   c=color;
  //   t = text;
  // }

  // OR-------------

   listItem({Key? key, required this.color,required this.text}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                 // color: c,
                 color: color,
                  child: Center(child: 
                 // Text(t),
                 Text(text)
                  ),
                ),    
                );
  }
}