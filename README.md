# Kirim Data ke Server
Program yang mendemonstrasikan pengiriman data yang diinputkan oleh pengguna ke server melalui jaringan internet. Apabila server menerima request pengiriman data dari program, maka server akan merespon dengan mengirimkan balik data yang sama disertai dengan id dan waktu ketika data tersebut diterima di server. Adapun cara penggunaan program ini adalah sebagai berikut:
## Input Data
Mula-mula pengguna memasukkan data berupa nama dan pekerjaan di textfield yang telah disediakan. Kemudian tap tombol kirim untuk mengirimkan data ke server. Adapun tampilan screen input data adalah sebagai berikut:
<br><br><img src="https://github.com/uqifumi/kirim-data-ke-server-dengan-flutter/blob/master/dokumentasi/Screenshot%20Kirim%20ke%20Server%2001.png" width="250"/><br>
<br><img src="https://github.com/uqifumi/kirim-data-ke-server-dengan-flutter/blob/master/dokumentasi/Screenshot%20Kirim%20ke%20Server%2002.png" width="250"/><br><br>
Ketika pengguna tap tombol kirim, maka akan terjadi proses asynchronous request pengiriman data ke server dan ditampilkan dialog circular progress indicator dengan tampilan sebagai berikut:
<br><br><img src="https://github.com/uqifumi/kirim-data-ke-server-dengan-flutter/blob/master/dokumentasi/Screenshot%20Kirim%20ke%20Server%2003.png" width="250"/><br>
## Respon Server
Ketika request berhasil diterima server, maka data diterima server dan sebagai respon akan dikirim balik data yang sama disertai dengan id dan waktu ketika data tersebut diterima server. Data kemudian dengan navigasi akan ditampilkan ke secreen lain yang tampilannya sebagai berikut:
<br><br><img src="https://github.com/uqifumi/kirim-data-ke-server-dengan-flutter/blob/master/dokumentasi/Screenshot%20Kirim%20ke%20Server%2004.png" width="250"/><br>
## Paket yang Digunakan
http: ^0.13.5 (https://pub.dev/packages/http)
## Referensi
Dokumentasi JSON API dan URL endpoint yang digunakan di program dapat diakses di: https://reqres.in/
