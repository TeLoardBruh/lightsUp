import 'package:flutter/material.dart';
import 'package:lightsUp/pages/home/createTeam.dart';
import 'package:lightsUp/pages/search/search.dart';
import 'SubHome.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  String title = 'kitchen';
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text("Promotion")),
          ),
          Row(children: [
            Container(
              height: 200,
              width: 180,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                child: Text(
                  this.title,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SubHome(this.title,this.status)),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              width: 180,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                child: Text(
                  "Bed Room",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
          // Container(
          //   height: 200,
          //   margin: EdgeInsets.all(15),
          //   decoration: BoxDecoration(
          //       color: Colors.brown, borderRadius: BorderRadius.circular(10)),
          //   // child: Column(
          //   //   children: [
          //   //     Text("hello")
          //   //   ],
          //   // ),
          // ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
