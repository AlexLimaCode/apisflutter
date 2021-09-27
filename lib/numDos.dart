import 'package:flutter/material.dart';

class numDos extends StatefulWidget {
  TextEditingController c1 = new TextEditingController();
  numDos(this.c1);

  _numDosState createState() => _numDosState(this.c1);
}

class _numDosState extends State<numDos> {
  TextEditingController c1 = new TextEditingController();
  _numDosState(this.c1);
  int s = 0;

  void dato() {
    s = int.parse(c1.text);
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text("Num 1"),
      new Flexible(
          child: new TextField(
        keyboardType: TextInputType.number,
        controller: c1,
      ))
    ]);
  }
}
