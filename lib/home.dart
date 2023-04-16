


import 'package:first_app/provider/Counter_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("Provider")
          ],
        ),
      ),
      body: Center(
        
        child: Row(
          
          children: [
            Text("counter value is ${context.watch<CounterProvider>().count}"),
            FloatingActionButton(onPressed: (){context.read<CounterProvider>().incrementcount(); },child: Icon(Icons.add),),
           FloatingActionButton(onPressed: (){},child: Icon(Icons.remove),),
          ],
        ),
      ),
    );
  }
}