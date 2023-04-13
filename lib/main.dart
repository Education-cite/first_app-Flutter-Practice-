import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          body:Row(
            children: [
              Container(
                height: double.infinity,
                width: 100,
                color: Colors.amber,
              ),
               Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.green,
              ),
               Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.pink,
              ),
          ],
          ),
        ) ,
    );
  }
}