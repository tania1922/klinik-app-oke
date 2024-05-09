
import 'package:flutter/material.dart';
import '/model/pegawai.dart';
import '/ui/pegawai/pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;
  const PegawaiItem({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title:
              Text(pegawai.nama), // Menampilkan teks nama pegawai pada ListTile
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PegawaiDetail(
                    pegawai:
                        pegawai))); // Menggunakan Navigator untuk berpindah ke halaman PegawaiDetail saat ListTile di-tap, dengan mengirimkan data pegawai
      },
    );
  }
}