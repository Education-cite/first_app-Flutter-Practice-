
import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  const Animated({super.key});

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("animated_Alignment"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
              child: AnimatedAlign(
                alignment:selected ? Alignment.topRight :Alignment.bottomLeft,
                duration: Duration(seconds: 2),
              //  child: Text("Hellow"),
                 child: InkWell(
                    onTap: () {
                       setState(() {
                       selected=!selected;
                });
                    },
                  child: FlutterLogo(size: 50.0,)
                  ),
                
                
                ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selected=!selected;
                });
            }, child: Text("Click here")
            )
          ],
        ),
      ),
    );
  }
}