


import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  double opacitylevel = 1.0;

  void checkOpacity(){
    setState(()=>opacitylevel= opacitylevel==0?1.0:0.0);
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: Text("Change opacity"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacitylevel,
              curve: Curves.ease,
              duration: Duration(seconds: 7),
              child: Container(
                width: 200,
                child: Image.asset("assets/images/rose.jpg"),
            
              ),
            ),
            ElevatedButton(
              onPressed:checkOpacity, child: Text("Click here")
            )
          ],
        ),
      ),
    );  }
}