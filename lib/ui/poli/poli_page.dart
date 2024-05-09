
mport 'package:flutter/material.dart';
import '/widget/sidebar.dart';
import '/model/poli.dart';
import '/ui/poli/poli_item.dart';
import '/ui/poli/poli_form.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), // Menambahkan Sidebar sebagai drawer pada Scaffold
      appBar: AppBar(
        title: const Text(
            "Data Poli"), // Menampilkan judul "Data Poli" pada AppBar
        actions: [
          GestureDetector(
            child: const Icon(Icons.add), // Menampilkan ikon tambah
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PoliForm()), // Navigasi ke halaman PoliForm saat ikon tambah di-tap
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Anak")), // Menampilkan item Poli dengan nama "Poli Anak"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Kandungan")), // Menampilkan item Poli dengan nama "Poli Kandungan"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Gigi")), // Menampilkan item Poli dengan nama "Poli Gigi"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli THT")), // Menampilkan item Poli dengan nama "Poli THT"
        ],
      ),
    );
  }
}