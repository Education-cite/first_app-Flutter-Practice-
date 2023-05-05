import 'package:flutter/material.dart';

class countWidget extends StatelessWidget {
  const countWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
       // height: 100,
    //  width: MediaQuery.of(context).size.width/2-19,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Age(in Year)"),
            Text("18"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 40,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    //  padding: EdgeInsets.all(20),
                    primary: Colors.purple.withOpacity(0.25),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.remove,
                    color: Colors.purple,
                    size: 40,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    //  padding: EdgeInsets.all(20),
                    primary: Colors.purple.withOpacity(0.25),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
