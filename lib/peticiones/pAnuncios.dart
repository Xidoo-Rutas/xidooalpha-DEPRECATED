import 'dart:convert';
import 'package:xidooalpha/modelos/noticias.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Noticias>> listClient() async {
  final response =
      await http.get(Uri.parse('http://192.168.0.77:5000/api/noticias'));
      //http://192.168.100.4:3001/api/negocios
      //http://192.168.100.4:4000/api/clientes
  print(response.body);

  return compute(goToList, response.body);
}

List<Noticias> goToList(String responseBody) {
  //var encode = json.encode(responseBody);
  final pasar = json.decode(responseBody);

  return pasar['noticias']
      .map<Noticias>((json) => Noticias.fromJson(json))
      .toList();
}