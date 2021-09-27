import 'package:flutter/material.dart';
import 'numUno.dart';
import 'numDos.dart';
import 'obtieneDatos.dart';
import 'regreso.dart';

class sumaNumeros extends StatefulWidget {
  //
  _sumaNumerosState createState() => _sumaNumerosState();
}

class _sumaNumerosState extends State<sumaNumeros> {
  TextEditingController c1 = new TextEditingController();
  TextEditingController c2 = new TextEditingController();
  String resultado = '0';
  double factor = 0;
  String fecha = "";
  String conversion = "";
  Future<void> dato() async {
    obtieneDatos dat = new obtieneDatos();
    regreso r = await dat.getdatos('usd', 'mxn');
    factor = r.num;
    fecha = r.fecha;
    setState(() {
      resultado = factor.toString() + " fecha = " + fecha;
      double w = double.parse(c1.text) * factor;
      w = double.parse(w.toStringAsFixed(2));
      conversion = w.toString();
    });
  }

  void suma() {
    setState(() {
      int resultado = int.parse(c1.text) + int.parse(c2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      numUno(c1),
      //numDos(c2),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(onPressed: () => dato(), child: Text("Convierte"))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Resultado = " + conversion + "\n\n\n"),
        ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Factor = " + resultado)])
    ]));
  }
}
