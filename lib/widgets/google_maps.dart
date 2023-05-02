import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class Google_Map extends StatefulWidget {
  const Google_Map({super.key});

  @override
  State<Google_Map> createState() => _Google_MapState();
}

class _Google_MapState extends State<Google_Map> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: Text("Google Map"),),
      backgroundColor: Colors.blue,
      body: Stack(
        children:<Widget> [

        ],
      )
    ) ;
  }
}