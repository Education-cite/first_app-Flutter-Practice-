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
      title: "Home",
      home: HomePage(),
     //  home: PageOne(),
      // initialRoute: "/",
      // routes: {
      //   "/":(context) => PageOne(),
      //   "pageTwo":(context) =>PageTwo(),
      //  "pageThree":(context) =>PageThree(),
      //   "pageFour":(context) =>PageFour(),
      // },

         //   OR-------------
      //  initialRoute: PageOne.path,
      // routes: {
      //   PageOne.path:(context) => PageOne(),
      //   PageTwo.path:(context) =>PageTwo(),
      //   PageThree.path:(context) =>PageThree(),
      //   PageFour.path:(context) =>PageFour(),
      // },
    );
    
  }
}




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


int _currentIndex = 0;

  List<Widget> bodyItems = [
    Container(
      child: PageOne(),
    //  color: Colors.amber,
    ),
    Container(
      child: PageTwo(),
    //  color: Colors.red,
    ),
    Container(
      child: Test( ),
    //  color: Colors.pink,
    ),
  ];



  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: bodyItems[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: Colors.pink,
              label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.teal,
              label: "Profile"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Color.fromARGB(255, 198, 222, 241),
        elevation: 5,
      ),
    );
    }
}


class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // List items = [1,2,3,4,5,6,7,8,9];
     List items = List<dynamic>.generate(5, (i) => "Item ${i+1}");

 
  @override
  Widget build(BuildContext context) {
    return  Container(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context,index){
                  final item = items[index];
                return Dismissible(
                  background: Container(
                    color: Colors.red,
                  ),
                   secondaryBackground: Container(
                    color: Colors.green,
                  ),
                  key: Key(item),
                  onDismissed: (direction){
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                  child: ListTile(
                    title: Text("Item"),
                  ),
                );
              }),
            );
  }
}