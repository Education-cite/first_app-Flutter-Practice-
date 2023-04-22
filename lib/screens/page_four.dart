
import 'package:first_app/page_one.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
    static final String path = "pageFour";

  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageFour"),
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
               // Navigator.pop(context);
             //  Navigator.popAndPushNamed(context, "/");
            Navigator.popAndPushNamed(context, PageOne.path);


              },
             child: Text("Click Button"),
             ),
          ],
        ),
      ),
    );
  }
}
