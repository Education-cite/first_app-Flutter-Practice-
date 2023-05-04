import 'package:first_app/provider/Counter_Provider.dart';
import 'package:first_app/provider/about.dart';
import 'package:first_app/provider/setting_controller.dart';
import 'package:first_app/provider/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
      final testController = Provider.of<TestController>(context);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
      
            Consumer<TestController>(
              builder: (context, testController, child) => Container(
                width: 300,
                height: 100,
                color: Colors.green,
                child: Text(testController.name,
                style: TextStyle(
                  fontSize: 20.0,
                  
                ),
                ),
              ),
            ),
           TextField(
                controller: testController.textController,
               
              ),
            
            ElevatedButton(
              onPressed: (){
                testController.nameChangeMethod();
              }, child: Text("Update")
              )
      
             
          ],
        ),
      ),
    );
  }
}