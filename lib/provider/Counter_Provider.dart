import 'package:first_app/provider/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
   Setting({super.key});


  @override
  Widget build(BuildContext context) {
  final settingController = Provider.of<SettingController>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Setting"),),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  settingController.increment();
              }, child: Icon(
                Icons.add,
                color: Colors.white,
                size: 60,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),primary: Colors.green
                ),
              
              ),

               ElevatedButton(
                onPressed: (){

              }, child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 60,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),primary: Colors.red
                ),
              
              )
            ],
          ),
        ),
      ),
    );
  }
}