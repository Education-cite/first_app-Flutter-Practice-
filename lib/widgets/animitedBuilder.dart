


import 'package:flutter/material.dart';
import 'dart:math' as math;

class animated_Builder extends StatefulWidget {
  const animated_Builder({super.key});

  @override
  State<animated_Builder> createState() => _animated_BuilderState();
}

class _animated_BuilderState extends State<animated_Builder> with TickerProviderStateMixin{
 
 late final AnimationController animationController =AnimationController(
  vsync: this,
  duration: Duration(seconds: 3)
  
  )..repeat();
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Builder"),),
      body: AnimatedBuilder(
        animation: animationController,
         builder: (BuildContext context,Widget? child){
          return Transform.rotate(
            angle: animationController.value*2.0*math.pi,
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
            
            );
         }
         
         ),
    );
  }
}