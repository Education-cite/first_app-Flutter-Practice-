
import 'package:flutter/material.dart';

class Route1 extends StatefulWidget {
  const Route1({super.key});

  @override
  State<Route1> createState() => _Route1State();
}

class _Route1State extends State<Route1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route1"),),

      body: Center(
        child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(_createRoute(Route2()));
        },
         child: Text("Go")),
      ),
    );
  }
}


Route _createRoute(Widget widget){
  return PageRouteBuilder(pageBuilder: (context,Animation,secondaryAnimation){
    return widget;
  },
  transitionsBuilder: (context,animation,secondaryAnimation,child){
    var begin = Offset(0.0, 1.0);
    var end = Offset.zero;
    var tween = Tween(end: end,begin: begin);
    var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
        
        );
  }
  );
}




class Route2 extends StatefulWidget {
  const Route2({super.key});

  @override
  State<Route2> createState() => _Route2State();
}

class _Route2State extends State<Route2> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Route2"),),

      body: Center(
        child: ElevatedButton(onPressed: (){
      
        },
         child: Text("Go")),
      ),
    );
  }
}



class Route3 extends StatefulWidget {
  const Route3({super.key});

  @override
  State<Route3> createState() => _Route3State();
}

class _Route3State extends State<Route3> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(title: Text("Route3"),),

      body: Center(
        child: ElevatedButton(onPressed: (){
      
        },
         child: Text("Go")),
      ),
    );  }
}