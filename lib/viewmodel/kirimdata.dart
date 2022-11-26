import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kirim_data_ke_server_dengan_flutter/model/pengguna.dart';

Future<Pengguna> kirimData(String nama, String pekerjaan) async {
  final response = await http.post(
    Uri.parse('https://reqres.in/api/users'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': nama,
      'job' : pekerjaan
    }),
  );

  if (response.statusCode == 201) {
    return Pengguna.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}
