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
                listItem(color:Colors.green,text:"Enamul"),
                listItem(color:Colors.amber,text:"tawhide"),
                listItem(color:Colors.pink,text:"tusi"),
                listItem(color:Colors.red,text:"pinki"),
                listItem(color:Colors.blue),
                listItem(color:Colors.black),
                listItem(color:Colors.yellow),
                listItem(color:Colors.green),
                listItem(color:Colors.amber),
                listItem(color:Colors.pink),
                listItem(color:Colors.red),
                listItem(color:Colors.blue),
                listItem(color:Colors.black),
                listItem(color:Colors.yellow),
              ],
            ),
          )),
    );
  }
}
