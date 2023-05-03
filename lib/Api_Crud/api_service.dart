import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final baseURL = "jsonplaceholder.typicode.com";

  Future getAlbum() async {
//var url = Uri.parse(baseUrl);
    var response = await http.get(Uri.https("$baseURL", "albums"));
//print(response.statusCode);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load data");
    }
  }

  Future sendAlbum(String title) async {
//var url = Uri.parse(baseUrl);
    var response = await http.post(Uri.https("$baseURL", "albums"),
        body: jsonEncode(<String, String>{
          "title": title,
        }),
        headers: <String, String>{"Content-Type": "application/json"});
  //  print(response.statusCode);
    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load data");
    }
  }

  Future updateAlbum(String title, id) async {
//var url = Uri.parse(baseUrl);
    var response = await http.put(Uri.https("$baseURL", "albums/$id"),
        body: jsonEncode(<String, String>{
          "title": title,
        }),
        headers: <String, String>{"Content-Type": "application/json"});
   // print(response.statusCode);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load data");
    }
  }


   Future deleteAlbum(id) async {
//var url = Uri.parse(baseUrl);
    var response = await http.delete(Uri.https("$baseURL", "albums/$id"),
       
        headers: <String, String>{"Content-Type": "application/json"});
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }



}
