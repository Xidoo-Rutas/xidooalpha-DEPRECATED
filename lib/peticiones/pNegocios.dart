import 'dart:convert';
import 'package:xidooalpha/modelos/negocios.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Client>> listClient() async {
  final response =
      await http.get(Uri.parse('http://192.168.0.77:4000/api/clientes'));
      //http://192.168.100.4:3001/api/negocios
      //http://192.168.100.4:4000/api/clientes
  print(response.body);

  return compute(goToList, response.body);
}

List<Client> goToList(String responseBody) {
  //var encode = json.encode(responseBody);
  final pasar = json.decode(responseBody);

  return pasar['clientes']
      .map<Client>((json) => Client.fromJson(json))
      .toList();
}