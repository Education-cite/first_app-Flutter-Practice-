import 'package:first_app/widgets/listItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: HomePage(),
    );
    
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(  
        backgroundColor: Colors.teal,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/rose.jpg"),
              ),
              Text(
                "Mr Enamul",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
             Text(  
                "Flutter Developer".toUpperCase(),
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ), 
              ),
              Divider(
                thickness: 2,
                color: Colors.green.shade400,
                indent: 100,
                endIndent: 100,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: Container(
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Icon(Icons.call,
                      color: Colors.teal,
                      size: 28,          
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "+08801746905851",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                          fontSize: 20,
                          color: Colors.teal,
                          fontWeight: FontWeight.normal
                      ),
                      )
                    ],
                  ),
                ),
              ),
                SizedBox(
                  height: 5.0,
                ),
                Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                child: Container(
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Icon(Icons.email,
                      color: Colors.teal,
                      size: 28,          
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "tusarjobs@gmail.com",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                          fontSize: 20,
                          color: Colors.teal,
                          fontWeight: FontWeight.normal
                      ),
                      )
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}