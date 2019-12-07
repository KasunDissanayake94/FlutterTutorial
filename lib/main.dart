import 'package:flutter/material.dart';
import 'package:shoppingapp/app_screens/home_screen.dart';

void main() => runApp( new MyApp()); //function expression

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build returns a widget
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Tutorial",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Home Screen"),
          ),
          body: HomeScreen()
        )
    );
  }

}