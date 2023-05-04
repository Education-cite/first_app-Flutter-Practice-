import 'package:first_app/provider/Counter_Provider.dart';
import 'package:first_app/provider/about.dart';
import 'package:first_app/provider/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 50.0,),
            ListTile(
              onTap: (){
                Route route = MaterialPageRoute(builder: (_){
                  return Setting();
                });
                Navigator.push(context, route);
              },
              title: Text("Setting"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

             ListTile(
              onTap: (){
                Route route = MaterialPageRoute(builder: (_){
                  return About();
                });
                Navigator.push(context, route);
              },
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),


          ],
        ),
      ),
      body: Container(
        child: Consumer<SettingController>(
          builder: (context,settingController,child){
          //  print(settingController.sizeCounter.toDouble());
            return Text("Provider helps make your widgets as 'dumb' as possible by separating logic from the widgets, and injecting the important data to those widgets. If you're building an e-commerce app, you can build a cart page that knows it should display some items in a cart.",
          style: TextStyle(
            fontSize:  settingController.sizeCounter.toDouble() == 0.0 ? 20 : settingController.sizeCounter.toDouble(),
            ),
          );
          },
          
        ),
      ),
    );
  }
}