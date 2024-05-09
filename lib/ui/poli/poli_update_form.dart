
import 'package:flutter/material.dart';
import '/model/poli.dart';
import '/ui/poli/poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Ubah Poli")), // Menampilkan judul "Ubah Poli" pada AppBar
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPoli(), // Menampilkan input field untuk nama poli
              SizedBox(height: 20),
              _tombolSimpan(), // Menampilkan tombol "Simpan Perubahan"
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
          labelText:
              "Nama Poli"), // Menampilkan label "Nama Poli" pada input field
      controller: _namaPoliCtrl,
    );
  }