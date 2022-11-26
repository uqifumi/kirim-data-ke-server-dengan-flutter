import 'package:flutter/material.dart';
import 'package:kirim_data_ke_server_dengan_flutter/view/response.dart';
import 'package:kirim_data_ke_server_dengan_flutter/model/pengguna.dart';
import 'package:kirim_data_ke_server_dengan_flutter/viewmodel/kirimdata.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final TextEditingController controllernama = TextEditingController();
  final TextEditingController controllerpekerjaan = TextEditingController();
  Future<Pengguna>? futurePengguna;
  Pengguna? pengguna;

  @override
  Widget build(BuildContext context) {
    // Bagian circular progress indicator.
    tampilDialogProgress(BuildContext context) {
      AlertDialog alert = AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator(),
            Container(
                margin: const EdgeInsets.all(5.0),
                child: const Text("Kirim data...")),
          ],
        ),
      );
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    // Bagian utama Home.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kirim data ke server'),
      ),
      // Bagian form untuk input data.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              controller: controllernama,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Masukkan nama'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              controller: controllerpekerjaan,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Masukkan pekerjaan'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ElevatedButton(
                onPressed: () {
                  tampilDialogProgress(context);
                  futurePengguna =
                      kirimData(controllernama.text, controllerpekerjaan.text);
                  futurePengguna?.then((value) {
                    pengguna = value;
                    controllernama.clear();
                    controllerpekerjaan.clear();
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(
                                  pengguna: pengguna,
                                )));
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Kirim data'),
              )),
        ],
      ),
    );
  }
}
