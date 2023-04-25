import 'package:first_app/page_three.dart';
import 'package:first_app/page_two.dart';
import 'package:first_app/screens/page_four.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  bool isSwitchTraggle = false;


void switchTragle(bool value){
  if(isSwitchTraggle==false){
    setState(){
      isSwitchTraggle=true;
    }
  }else{
    setState(){
      isSwitchTraggle=false;
    }
  }
}


  static final String path = "pageOne";
   PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageOne"),
        actions: [
          PopupMenuButton(onSelected: (value) {
            if(value=="pageone"){
               Route route = MaterialPageRoute(builder: (context) => PageOne());
                Navigator.push(context, route);
            }else if(value=="pagetwo"){
               Route route = MaterialPageRoute(builder: (context) => PageTwo());
                Navigator.push(context, route);
            }else if(value=="pagethree"){
               Route route = MaterialPageRoute(builder: (context) => PageThree());
                Navigator.push(context, route);
            }else if(value=="pagefour"){
               Route route = MaterialPageRoute(builder: (context) => PageFour());
                Navigator.push(context, route);
            }
          }, 
          offset: Offset(50.0, 60.0),
          itemBuilder: (BuildContext context) {
            
            return [
              PopupMenuItem(child: Text("page One"),value: "pageone"),
              PopupMenuItem(child: Text("page Two"),value: "pagetwo"),
              PopupMenuItem(child: Text("page Three"),value: "pagethree"),
              PopupMenuItem(child: Text("page Four"),value: "pagefour"),
            ];
          }),
        ],
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
                  shadowColor: MaterialStateProperty.all(Colors.amber)),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => PageTwo());
                Navigator.push(context, route);
              },
              child: Text("Click Button"),
            ),
            Switch(
              activeColor: Colors.green,
              activeTrackColor: Colors.blue,
              inactiveThumbColor: Colors.pink,
              inactiveTrackColor: Colors.red,
              value: isSwitchTraggle, onChanged: (value)=>switchTragle(value),

            
            ),
          ],
          
        ),
      ),
    );
  }
}
