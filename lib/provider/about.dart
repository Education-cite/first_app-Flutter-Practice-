
import 'package:first_app/provider/setting_controller.dart';
import 'package:first_app/provider/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AboutPage"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Consumer<SettingController>(
                builder: (context,settingController,child){
                //  print(settingController.sizeCounter.toDouble());
                  return Text("Selector is similar to consumer, but provides some fine control over when a widgets build method is called. In a nutshell, selector is a consumer that allows you to define exactly which properties from a model you care about.",
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
          ],
        ),
      ),
    );
  }
}