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
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Hellow bangladesh",
            style: TextStyle(
              color: Colors.red,
            ),
            ),
            ),
        )
      ),
    );
  }
}