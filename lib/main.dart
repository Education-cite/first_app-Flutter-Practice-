import 'package:first_app/Api_Crud/home.dart';
import 'package:first_app/home.dart';
import 'package:first_app/page_three.dart';
import 'package:first_app/page_two.dart';
import 'package:first_app/widgets/AnimatedAlignment.dart';
import 'package:first_app/widgets/animatedContainer.dart';
import 'package:first_app/widgets/animitedBuilder.dart';
import 'package:first_app/widgets/camera.dart';
import 'package:first_app/widgets/changeOpacity.dart';
import 'package:first_app/widgets/google_maps.dart';
import 'package:first_app/widgets/routeAnimation.dart';

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
      home: RestApiCrud(),
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


class FromPage extends StatefulWidget {


  const FromPage({super.key});

  @override
  State<FromPage> createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {

TextEditingController textEditingController = TextEditingController();

List<String> image = [
  "https://w7.pngwing.com/pngs/667/326/png-transparent-red-rose-rose-rose-corner-s-love-flower-arranging-presentation-thumbnail.png",
    "https://w7.pngwing.com/pngs/667/326/png-transparent-red-rose-rose-rose-corner-s-love-flower-arranging-presentation-thumbnail.png",
  "https://w7.pngwing.com/pngs/667/326/png-transparent-red-rose-rose-rose-corner-s-love-flower-arranging-presentation-thumbnail.png",
  "https://w7.pngwing.com/pngs/667/326/png-transparent-red-rose-rose-rose-corner-s-love-flower-arranging-presentation-thumbnail.png"

];
var dropDownItemValue = 0;
List<Color> color =[Colors.pink,Colors.red,Colors.amber,Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FromPage"),),
       body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          
          crossAxisCount:2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
           ), 
       
       itemBuilder: (context,index){
        return Image.network(image[index]);
        
       }
       )
       
       
      //  GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: EdgeInsets.all(8.0),
      //  children: [
      //   Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.blue,
      //   ),
      //    Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.amber,
      //   ),
      //    Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.pink,
      //   ),
      //    Container(
      //     height: 200,
      //     width: 200,
      //     color: Color.fromARGB(255, 152, 40, 66),
      //   ),
      //    Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.green,
      //   ),
      //    Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.red,
      //   )
      //  ],
      //  ),


      //     Column(
      //   children: [
      //     DropdownButton(
      //       value: dropDownItemValue,
      //       underline: Container(),
      //       items: [
      //         DropdownMenuItem(child: Text("item 1"),value: 0,),
      //          DropdownMenuItem(child: Text("item 2"),value: 1,),
      //           DropdownMenuItem(child: Text("item 3"),value: 2,),
      //            DropdownMenuItem(child: Text("item 4"),value: 3,),
      //       ],
   
      //     onChanged: (dynamic value){
      //         setState(() {
      //           dropDownItemValue = value;
      //         });
      //       print(dropDownItemValue);

      //     },
          
      //     )
      //   ],
      //  ),

       
      //  ListView.separated(
      //   separatorBuilder: (context, index) {
      //      return   Divider(
      //          thickness: 10,
      //         color:Colors.white,
      //        );
      //   },
      //   itemCount: 4,
      //   itemBuilder:(context,index){
      //     return   Container(
      //          height: 150,
      //         color:color[index],
      //        );
      //  }
      //  ),
      
      //body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //         // TextField(
      //         //   controller: textEditingController,
      //         //   cursorColor: Colors.red,
                
      //         //   decoration: InputDecoration(
      //         //     contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      //         //     fillColor: Colors.black12,
      //         //     filled: true,
      //         //     hintText: "Enter your name",
      //         //     hintStyle: TextStyle(color: Colors.orange),
      //         //     labelText: "First Name",
      //         //     labelStyle: TextStyle(color: Colors.pink),
      //         //    // border: InputBorder.none, 
      //         //    border:OutlineInputBorder(
      //         //       borderRadius: BorderRadius.circular(10)
      //         //     ),
      //         //     focusedBorder: OutlineInputBorder(
      //         //       borderRadius: BorderRadius.circular(10),
      //         //       borderSide: BorderSide(color: Colors.red),
      //         //     ),
      //         //     enabledBorder:  OutlineInputBorder(
      //         //       borderRadius: BorderRadius.circular(10),
      //         //       borderSide: BorderSide(color: Colors.red),
      //         //     ),
      //         //    prefixIcon: Icon(Icons.person),
      //         //    suffixIcon: Icon(Icons.arrow_upward),
      //         //   ),
      //         // ),
            
      //        Container(
      //          width: 150,
      //         color: Colors.red,
      //        ),
      
      //         Container(
      //          width: 150,
      //         color: Colors.pink,
      //        ),
      
      //         Container(
      //          width: 150,
      //         color: Color.fromARGB(255, 19, 18, 18),
      //        ),
      
      //         Container(
      //          width: 150,
      //         color: Color.fromARGB(255, 76, 54, 244),
      //        ),
      //         Container(
      //          width: 150,
      //         color: Colors.amber,
      //        ),
      //         Container(
      //          width: 150,
      //         color: Colors.green,
      //        ),
      
      //      ],     
          
      //      ),
      // ),
    );
  }
}


class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {

int? groupValue=0;
bool checkboxval=false;
Map<String,bool> item = {
"book":false,
"egg":false,
"cat":false,
"dog":false,

};
List<dynamic> list = ["pen","apple","mango","orange"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(title: Text("Bottomsheet"),
          ),
          body: Container(
              width: double.infinity,
              padding:EdgeInsets.only(bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...item.keys.map((e) {
                    return Row(
                      children: [
                        Checkbox(
                          value: item[e], 
                          onChanged: (bool? value){
                            setState(() {
                              item[e]=value!;
                            });
                          }),
                         // Text("${list[index]}")
                          Text(e),
                       //   ...list.map((index) => Text(list[index])),
                          
                      ],
                    );
                  })

                  // Radio(
                  //   value: 1,
                  //  groupValue: groupValue,
                  //  onChanged: (value){
                  //     setState(() {
                  //       groupValue=value;
                  //     });
                  //  }),
                  //   Radio(
                  //   value: 2,
                  //  groupValue: groupValue,
                  //  onChanged: (value){
                  //     setState(() {
                  //       groupValue=value;
                  //     });
                  //  }),
                  //   Radio(
                  //   value: 3,
                  //  groupValue: groupValue,
                  //  onChanged: (value){
                  //     setState(() {
                  //       groupValue=value;
                  //     });
                  //  }),
                  //   Radio(
                  //   value: 4,
                  //  groupValue: groupValue,
                  //  onChanged: (value){
                  //     setState(() {
                  //       groupValue=value;
                  //     });
                  //  }),

                  
                ],
              ),
          ),
          // floatingActionButton: FloatingActionButton(onPressed: (){
          //   showBottomSheet(
          //     context: context, 
          //     builder: (_){
          //       return Container(
          //         child: Column(
          //           children: [
          //             ListTile(
          //               title: Text("Abc"),
          //               leading: Icon(Icons.abc),
          //             )
          //           ],
          //         ),
          //       );
          //     });
          // },
          // child: Icon(Icons.add),
          // ),
    );
  }
}