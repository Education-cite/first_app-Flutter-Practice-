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
import 'package:first_app/widgets/count_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        home: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.moon))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: countWidget(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: countWidget(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Card(
                elevation: 8,
                child: Container(
                  // height: 250,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5)),
                          width: 100,
                          height: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("cm"),
                              Switch(value: true, onChanged: (value) {}),
                              Text("ft"),
                            ],
                          ),
                        ),
                      ),
                      Container(child: Text("Height")),
                      Container(
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              //  color: Colors.black12,
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_downward)
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              //  color: Colors.black12,
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.arrow_downward)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Expanded(
              child: Card(
                elevation: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("gender"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("I Am"),
                        Text("Male"),
                        Switch(value: true, onChanged: (value) {}),
                        Text("Female"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
              child: ElevatedButton(
                  child: Text("Calculate".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9),
                              side: BorderSide(color: Colors.red)))),
                  onPressed: () => null),
            )
          ],
        ),
      ),
    );
  }
}
