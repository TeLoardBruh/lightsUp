import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search..',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter something';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState.validate()) {
                      // Process data.
                    }
                  },
                  child: Text('Search..'),
                ),
              ),
            ],
          ),
        ),
      ),
      Row(children: [
        Container(
          height: 200,
          width: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [Text("hello")],
          ),
        ),
        Container(
          height: 200,
          width: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          // child: Column(
          //   children: [
          //     Text("hello")
          //   ],
          // ),
        ),
      ]),
      Container(
        height: 200,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
        // child: Column(
        //   children: [
        //     Text("hello")
        //   ],
        // ),
      ),
      Container(
        height: 200,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.brown, borderRadius: BorderRadius.circular(10)),
        // child: Column(
        //   children: [
        //     Text("hello")
        //   ],
        // ),
      ),
    ]);
  }
}
