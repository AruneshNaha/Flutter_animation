import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/NewPage.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Hero and Clip R-React'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                "Widgets below:",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Hero(
                tag: 'tag',
                child: ClipRect(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewPage()));
                    },
                    child: Container(
                      child: Text(
                        "TAP TO ANIMATE",
                        style: TextStyle(
                          fontSize: 20.0,

                        ),
                      ),
                      alignment: Alignment.center,
                      height: 300.0,
                      width: 300.0,
                      margin: EdgeInsets.all(50.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(colors: [
                          Colors.blue[400],
                          Colors.blue[900]
                        ]),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
