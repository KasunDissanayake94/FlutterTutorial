import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        title: "Interest Counter",
        home: StatefullWidgetExample(),
      )
  );
}

class StatefullWidgetExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StatefullWidgetExample();
  }

}
class _StatefullWidgetExample extends State<StatefullWidgetExample>{
  var _currencies  = ["Ruppees", "Dolars", "Pounds"];
  String interest = "";
  var _currentItemSelected = "Ruppees";
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


            DropdownButton<String>(
              items: _currencies.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),

              onChanged: (String newValueSelected){
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:
              Text(
                "You have typed  $interest",
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),)
          ],
        ),
      ),
    );
  }

}