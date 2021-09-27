import 'package:flutter/material.dart';
import 'regreso.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class obtieneDatos {
  Future<String> getapi(String origen, String destino) async {
    String url =
        'https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/' +
            origen +
            '/' +
            destino +
            '.json';
    final response = await http.get(Uri.parse(url));
    print(response.body);
    return response.body.toString();
  }

  Future<regreso> getdatos(String origen, String destino) async {
    String myregreso = '';
    myregreso = await getapi(origen, destino);
    Map<String, dynamic> data = json.decode(myregreso);
    regreso r = regreso(fecha: data['date'], num: data['mxn']);
    return r;
  }
}
