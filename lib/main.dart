import 'package:first_app/widgets/listItem.dart';
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
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
            leading: Icon(Icons.search),
            actions: [
              Icon(Icons.alarm),
              Icon(Icons.add),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("hellow i am click");
            },
            child: Icon(Icons.add),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                listItem(color:Colors.green,text:"Nayem"),
                listItem(color:Colors.amber,text:"tawhide"),
                listItem(color:Colors.pink,text:"tusi"),
                listItem(color:Colors.red,text:"pinki"),
                listItem(color:Colors.blue,text:"Enamul"),
                listItem(color:Colors.black,text:"Enamul"),
                listItem(color:Colors.yellow,text:"Enamul"),
                listItem(color:Colors.green,text:"Enamul"),
                listItem(color:Colors.amber,text:"Enamul"),
                listItem(color:Colors.pink,text:"Enamul"),
                listItem(color:Colors.red,text:"Enamul"),
                listItem(color:Colors.blue,text:"Enamul"),
              
              ],
            ),
          )),
    );
  }
}
