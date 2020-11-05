import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

int x = 1;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful and Stateless Widgets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text('Welcome to Android ATC'),
              Container(
                child: RaisedButton(
                  child: Text('Click Me'),
                  onPressed: () {
                    setState(() {
                      x = 2;
                    });
                  },
                ),
              ),
              Image.asset('images/pizza$x.png')
            ],
          ),
        ),
      ),
    );
  }
}
