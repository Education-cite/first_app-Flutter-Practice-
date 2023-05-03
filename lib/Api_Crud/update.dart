
import 'package:first_app/Api_Crud/api_service.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Api_Crud/custom_card.dart';


class UpdateScreen extends StatefulWidget {

  final String title;
  final String id;
  const UpdateScreen({super.key,required this.title,required this.id});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  final ApiService apiService = ApiService();
  late TextEditingController _titleEditingController;

  @override
  void initState() {
    _titleEditingController = TextEditingController(text: widget.title);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Page"),),
      body: Container(
     padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextField(
             controller: _titleEditingController,
             decoration: InputDecoration(
                labelText: "Task title",
                hintText: "Enter Task title"
              ),
              autofocus: true,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                  apiService.updateAlbum(widget.title, widget.id);
            }, child: Text("update")),
          )
        ],
      ),
      ),
    );
  }
}