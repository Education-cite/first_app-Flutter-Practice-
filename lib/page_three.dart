
import 'package:first_app/screens/page_four.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
    static final String path = "pageThree";

  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageThree"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
                shadowColor: MaterialStateProperty.all(Colors.amber)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageFour()));
              },
             child: Text("Click Button"),
             ),
          ],
        ),
      ),
    );
  }
}