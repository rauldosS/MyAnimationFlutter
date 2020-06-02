import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  // This widget is the root of your application.
  var _color = Colors.amber;
  var _height = 250.0;
  var _width = 250.0; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            <Widget>[
              DragTarget(
                builder: (
                  BuildContext context,
                  List<String> accepted,
                  List<dynamic> rejected
                ){
                    return new Container(width: 200, height: 200, color: Colors.amber);
                  },
                  onAccept: (data) => print(data)
              ),
              Container(height: 50),
              Draggable(
                data: "Me arraste",
                child: Container(width: 100, height: 100, color: Colors.purple),
                feedback: Container(width: 100, height: 100, color: Colors.pink),
              ),

              AnimatedContainer(
                duration: Duration(seconds: 1),
                color: _color, 
                width: _width, 
                height: _height,
              ),
              RaisedButton(
                child: Text("Animadinho"),
                onPressed: () {
                  _color = Colors.red;
                  _height = 300.0;
                  _width = 225.0;
                  setState((){});
                },
              )
            ],
          ),
        )
      )
    );
  }
}