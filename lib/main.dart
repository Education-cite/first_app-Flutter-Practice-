import 'package:first_app/page_three.dart';
import 'package:first_app/page_two.dart';

import './page_one.dart';
import 'package:first_app/screens/page_four.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
     //  home: PageOne(),
      // initialRoute: "/",
      // routes: {
      //   "/":(context) => PageOne(),
      //   "pageTwo":(context) =>PageTwo(),
      //  "pageThree":(context) =>PageThree(),
      //   "pageFour":(context) =>PageFour(),
      // },

         //   OR-------------
       initialRoute: PageOne.path,
      routes: {
        PageOne.path:(context) => PageOne(),
        PageTwo.path:(context) =>PageTwo(),
        PageThree.path:(context) =>PageThree(),
        PageFour.path:(context) =>PageFour(),
      },
    );
    
  }
}





