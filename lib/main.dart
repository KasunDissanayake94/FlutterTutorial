import 'package:flutter/material.dart';
import 'package:shoppingapp/app_screens/home_screen.dart';

void main() => runApp( new MyApp()); //function expression

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build returns a widget
    return MaterialApp(
      title: "Functions",
      home: Scaffold(
        appBar: AppBar(title: Text("Functions"),),
        body: getListView(),
      ),
    );
  }

}

Widget getListView(){

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.edit),
        title: Text("Edit "),
        subtitle: Text("Edit your details"),
      ),
      ListTile(
        leading: Icon(Icons.add),
        title: Text("Add "),
        subtitle: Text("Add your details"),
      ),
      ListTile(
        leading: Icon(Icons.delete),
        title: Text("Delete "),
        subtitle: Text("Delete your details"),
      )
    ],
  );

  return listView;
}