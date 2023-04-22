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
        appBar: AppBar(
          title: Center(
            child: Text("Profile"
            ),
          ),
          ), 
          endDrawer: Drawer(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                         Image.asset("assets/images/flower.jpg"),
                         Positioned(
                          left: 80,
                          top: 50,
                           child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("assets/images/rose.jpg"),
                           ),
                         ),
                         Positioned(
                          left: 190,
                          top: 80,
                          child: Text("Enamul Haque",style: TextStyle(color:Colors.red))),
                         Positioned(
                          left: 190,
                          top: 100,
                          child: Text("(Flutter Developer)",style: TextStyle(color:Colors.red)))
                      ],
                    ),
                  ),
                 ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  trailing: Icon(Icons.arrow_forward_ios),
                 ),
                 Divider(
                  thickness: 2,
                  color: Colors.grey,
                 ),
                  ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("notifications"),
                  trailing: Icon(Icons.arrow_forward_ios),
                 ),
                  Divider(
                  thickness: 2,
                  color: Colors.grey,
                 ),
                  ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("setting"),
                  trailing: Icon(Icons.arrow_forward_ios),
                 ),
                  Divider(
                  thickness: 2,
                  color: Colors.grey,
                 ),
                  ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("LogOut"),
                  trailing: Icon(Icons.arrow_forward_ios),
                 ),
                ],
              ),
            ),
          ),
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