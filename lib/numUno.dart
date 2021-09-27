import 'package:flutter/material.dart';

class numUno extends StatefulWidget {
  TextEditingController c1 = new TextEditingController();
  numUno(this.c1);

  _numUnoState createState() => _numUnoState(this.c1);
}

class _numUnoState extends State<numUno> {
  TextEditingController c1 = new TextEditingController();
  _numUnoState(this.c1);
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
