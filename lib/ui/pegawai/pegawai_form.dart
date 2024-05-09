
import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey =
      GlobalKey<FormState>(); // Membuat GlobalKey untuk mengakses FormState
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pegawai")), // Menampilkan judul "Tambah Pegawai" pada AppBar
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menggunakan GlobalKey pada Form
          child: Column(
            children: [
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "Nama Pegawai")), // Menampilkan TextField dengan label "Nama Pegawai"
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "NIP")), // Menampilkan TextField dengan label "NIP"
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "Tanggal Lahir")), // Menampilkan TextField dengan label "Tanggal Lahir"
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "Nomor Telepon")), // Menampilkan TextField dengan label "Nomor Telepon"
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "Email")), // Menampilkan TextField dengan label "Email"
              const TextField(
                  decoration: InputDecoration(
                      labelText:
                          "Password")), // Menampilkan TextField dengan label "Password"
              const SizedBox(
                  height: 20), // Memberikan jarak vertikal sebesar 20 piksel
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                      "Simpan")) // Menampilkan tombol "Simpan" yang belum memiliki fungsi onPressed
            ],
          ),
        ),
      ),
    );
  }
}