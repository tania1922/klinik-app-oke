import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pasien")), // Menampilkan judul "Tambah Pasien" pada AppBar
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nama Pasien")), // Menampilkan TextField untuk memasukkan nama pasien
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "No Rekam Medis")), // Menampilkan TextField untuk memasukkan nomor rekam medis pasien
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Tanggal Lahir")), // Menampilkan TextField untuk memasukkan tanggal lahir pasien
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nomor Telepon")), // Menampilkan TextField untuk memasukkan nomor telepon pasien
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Alamat")), // Menampilkan TextField untuk memasukkan alamat pasien
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                      "Simpan")) // Menampilkan tombol "Simpan" yang belum memiliki aksi
            ],
          ),
        ),
      ),
    );
  }
}
