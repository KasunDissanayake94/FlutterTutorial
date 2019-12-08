import 'package:flutter/material.dart';

class StatefullWidgetExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StatefullWidgetExample();
  }

}
class _StatefullWidgetExample extends State<StatefullWidgetExample>{
  String interest = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefullWidgetExample"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput){
                setState(() {
                  interest = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:
              Text(
                "You have typed  $interest",
                style: TextStyle(
                    fontSize: 20.0
                ),
              ),)
          ],
        ),
      ),
    );
  }

}