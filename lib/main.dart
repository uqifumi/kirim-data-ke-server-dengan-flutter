import 'package:flutter/material.dart';
import 'package:kirim_data_ke_server_dengan_flutter/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo kirim data ke server",
      home: Home(),
    );
  }
}