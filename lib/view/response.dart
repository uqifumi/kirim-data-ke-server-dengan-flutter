import 'package:flutter/material.dart';
import 'package:kirim_data_ke_server_dengan_flutter/model/pengguna.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.pengguna});

  final Pengguna? pengguna;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Response dari server'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Nama: ${pengguna?.nama}'),
          ),
          ListTile(
            title: Text('Pekerjaan: ${pengguna?.pekerjaan}'),
          ),
          ListTile(
            title: Text('ID: ${pengguna?.id}'),
          ),
          ListTile(
            title: Text('Dibuat: ${pengguna?.disimpan}'),
          )
        ],
      ),
    );
  }
}
