import 'package:first_app/page_three.dart';
import 'package:first_app/page_two.dart';
import 'package:first_app/screens/page_four.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  bool isSwitchTraggle = false;


void switchTragle(bool value){
  if(isSwitchTraggle==false){
    setState(){
      print("true");
      isSwitchTraggle=true;
    }
  }else{
    setState(){
      print("false");
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
            
            Transform.scale(
              scale: 2.0,

              child: Switch(
                
                activeColor: Colors.green,
                activeTrackColor: Colors.blue,
                inactiveThumbColor: Colors.pink,
                inactiveTrackColor: Colors.red,
                value: isSwitchTraggle, onChanged:switchTragle,
            
              
              ),
            ),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Hellow"),
                    titleTextStyle: TextStyle(color: Colors.red),
                    content: Text("this is alert dialog"),
                    actions: [
                      TextButton(onPressed: (){
                          Navigator.pop(context);
                      }, child: Text("yes"),
                      ),

                       TextButton(onPressed: (){
                           Navigator.pop(context);
                      }, child: Text("No"),
                      ),
                    ],
                  );
              });
            }, 
            child: Text("Alert"),
            ),
           ElevatedButton(onPressed: (){
            final snackBar = SnackBar(content: Text("Success"),
            backgroundColor: Colors.teal,
            action: SnackBarAction(
              label: "Yes", 
              textColor: Colors.white,
            onPressed: (){

            }),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
           }, child: Text("snackBar"))
          ],
          
        ),
      ),
    );
  }
}
