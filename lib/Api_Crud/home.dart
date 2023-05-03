

import 'package:first_app/Api_Crud/api_service.dart';
import 'package:first_app/Api_Crud/custom_card.dart';
import 'package:first_app/Api_Crud/update.dart';
import 'package:flutter/material.dart';

class RestApiCrud extends StatefulWidget {
  const RestApiCrud({super.key});

  @override
  State<RestApiCrud> createState() => _RestApiCrudState();
}

class _RestApiCrudState extends State<RestApiCrud> {


  var _titleEditingController = TextEditingController();

  ApiService apiService = ApiService();
  var tasks = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData()async{
    tasks = await apiService.getAlbum();
  //  print(tasks);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rest Api Card"),),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
             TextField(
              controller: _titleEditingController,
              decoration: InputDecoration(
                labelText: "Task title",
                hintText: "Enter Task title"
              ),
             ),

              SizedBox(height: 20.0,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    var title = _titleEditingController.text;
                    apiService.sendAlbum(title);
                  }, child: Text("Save")
                  ),
              ),

              for(var i=0; i<tasks.length;i++)
                  CustomCard(
                deleteFunction: (){
                  apiService.deleteAlbum(tasks[i]["id"]);
                },
                title: tasks[i]["title"],
                upDateFunction: (){
                  Route route = MaterialPageRoute(builder: (_){
                    return UpdateScreen(title: tasks[i]['title'], id: tasks[i]['id'].toString());
                  });
                 Navigator.push(context, route);
                },

              ),
              
            ],
          ),
        ),
      ),
    );
  }
}









