import 'package:flutter/material.dart';
import 'sumaNumeros.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "algo";
    return MaterialApp(
        title: "Separados",
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: sumaNumeros(),
        ));
  }
}
