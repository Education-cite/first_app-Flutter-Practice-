
import 'package:first_app/page_three.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
    static final String path = "pageTwo";

  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageTwo"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
               // backgroundColor: MaterialStateProperty.all(Colors.red),
               // shadowColor: MaterialStateProperty.all(Colors.amber),
               
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>PageThree()));
              },
             child: Text("Click Button"),
             ),
          ],
        ),
      ),
    );
  }
}
