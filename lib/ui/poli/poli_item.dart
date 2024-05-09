// Mengimpor paket flutter/material.dart yang diperlukan untuk membangun UI dengan Flutter.
import 'package:flutter/material.dart';

// Mengimpor model poli.dart yang berisi definisi Poli.
import '/model/poli.dart';

// Mengimpor halaman poli_detail.dart yang digunakan untuk menampilkan detail poli.
import 'package:klinik_app/ui/poli/poli_detail.dart';

// Kelas PoliItem adalah StatelessWidget yang digunakan untuk menampilkan item poli dalam daftar.
class PoliItem extends StatelessWidget {
  final Poli poli; // Variabel untuk menyimpan data poli.

  const PoliItem({Key? key, required this.poli}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Navigasi ke halaman PoliDetail saat item poli ditekan.
        );
      },
      child: Card(
        child: ListTile(
          title:
              Text("${poli.namaPoli}"), // Menampilkan nama poli pada ListTile.
        ),
      ),
    );
  }
}