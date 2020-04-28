import 'package:flutter/material.dart';

class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'tag',
            child: Container(
              height: 500.0,
              color: Colors.indigoAccent,
            ),
          )
        ],
      ),
    );
  }

}