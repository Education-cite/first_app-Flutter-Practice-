//import 'package:first_app/Api_Crud/home.dart';
//import 'package:first_app/home.dart';
//import 'package:first_app/page_three.dart';
// import 'package:first_app/page_two.dart';
// import 'package:first_app/provider/setting_controller.dart';
// import 'package:first_app/widgets/AnimatedAlignment.dart';
// import 'package:first_app/widgets/animatedContainer.dart';
// import 'package:first_app/widgets/animitedBuilder.dart';
// import 'package:first_app/widgets/camera.dart';
// import 'package:first_app/widgets/changeOpacity.dart';
// import 'package:first_app/widgets/google_maps.dart';
// import 'package:first_app/widgets/routeAnimation.dart';
import 'package:first_app/provider/homePage.dart';
import 'package:first_app/provider/setting_controller.dart';
import 'package:first_app/provider/test_controller.dart';
import 'package:provider/provider.dart';

// import './page_one.dart';
// import 'package:first_app/screens/page_four.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingController>(
      create: (BuildContext context) {
        return SettingController();
      },
      ),

       ChangeNotifierProvider<TestController>(
      create: (BuildContext context) {
        return TestController();
      },
      ),


      ],
     
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Home",
        home: MyHomePage(),
      
      ),
    );
    
  }
}


