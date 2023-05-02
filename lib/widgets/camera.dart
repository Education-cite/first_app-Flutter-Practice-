

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraStorage extends StatefulWidget {
  const CameraStorage({super.key});

  @override
  State<CameraStorage> createState() => _CameraStorageState();
}

class _CameraStorageState extends State<CameraStorage> {

  late File _image ;
  final picker = ImagePicker();

  Future getImage() async{
    final PickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if(PickedFile != null){
        _image = File(PickedFile.path);
      }else{
        print("No Image Found");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("camera Display"),),
      body: Container(
     //  child: _image == null ? Text("Image not found") : Image.file(_image)
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        getImage();
      },child: Text("Get"),
      ),
    );
  }
}