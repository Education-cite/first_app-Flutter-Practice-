

import 'package:flutter/material.dart';

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
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
             
              color: Colors.green,
              child:AnimatedContainer(
                width: selected ? 200 : 100,
                height: selected ? 200 :100,
                color: selected ? Colors.red : Colors.amber,
                duration: Duration(seconds: 3),
                curve: Curves.ease,
                child: Text(
                  "Enamul",
                  style: TextStyle(
                      color: selected ? Colors.black :Colors.white
                   ),
                ),
                ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  selected = !selected;
                });
            }, child: Text("Click here")
            )
          ],
        ),
      ),
    );  }
}