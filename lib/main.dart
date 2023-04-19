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
      home: SafeArea(
        child: Scaffold(
            body: Container(
              height: 500,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            )
                  
                
              
            
          ),
      )
      );
    
  }
}