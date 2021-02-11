import 'package:flutter/material.dart';

class SubHome extends StatelessWidget {
  final String title;
  final bool status;
  SubHome(this.title,this.status);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Column(children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(this.title)
                ),
          ),
          
        ]));
  }
}
