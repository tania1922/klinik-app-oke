import 'package:flutter/material.dart';
import '/model/data.dart';
import '/model/pegawai.dart';
import 'package:klinik_app/ui/pegawai/pegawai_item.dart';
import 'package:klinik_app/ui/pegawai/pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Data Pegawai"), // Menampilkan judul "Data Pegawai" pada AppBar
        actions: [
          GestureDetector(
            child: const Icon(Icons.add), // Menampilkan ikon "add" pada AppBar
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const PegawaiForm())); // Menggunakan Navigator untuk berpindah ke halaman PegawaiForm saat ikon di-tap
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in pegawai)
            PegawaiItem(
                pegawai: Pegawai(
                    i)) // Menggunakan loop for untuk menampilkan daftar PegawaiItem berdasarkan data pegawai yang ada
          // GestureDetector(
          //   child: Card(
          //     child: ListTile(title: Text(i['nama'])),
          //   ),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) =>
          //                 PegawaiDetail(pegawai: new Pegawai(i))));
          //   },
          // )
        ],
      ),
    );
  }
}
