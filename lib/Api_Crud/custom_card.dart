

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

 final Function upDateFunction;
final String title;
final Function deleteFunction;

   const CustomCard({
    required this.deleteFunction,required this.title,required this.upDateFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: upDateFunction(),
                icon: Icon(Icons.edit,color: Colors.green,)
                ),
                Expanded(
                  child: Container(
                  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("$title")
                      ],
                    ),
                  )
                  
                  ),
                  IconButton(
                    onPressed: deleteFunction(),
                     icon: Icon(Icons.delete)
                  )
            ],
          ),
          ),
      ),
    );
  }
}