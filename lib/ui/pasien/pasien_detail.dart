import 'package:flutter/material.dart';
import '/model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
                "Detail Pasien")), // Menampilkan judul "Detail Pasien" pada AppBar
        body: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          textAlign: TextAlign.left,
                          'Nama'), // Menampilkan teks "Nama"
                      Text(
                          textAlign: TextAlign.left,
                          'No Rekam Medis'), // Menampilkan teks "No Rekam Medis"
                      Text(
                          textAlign: TextAlign.left,
                          'Tanggal Lahir'), // Menampilkan teks "Tanggal Lahir"
                      Text(
                          textAlign: TextAlign.left,
                          'Nomor Telepon'), // Menampilkan teks "Nomor Telepon"
                      Text(
                          textAlign: TextAlign.left,
                          'Alamat') // Menampilkan teks "Alamat"
                    ]),
                Column(children: const [
                  Text(' : '), // Menampilkan tanda ":" sebagai pemisah
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : ')
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pasien.nama}"), // Menampilkan nama pasien
                    Text(
                        "${widget.pasien.noRm}"), // Menampilkan nomor rekam medis pasien
                    Text(
                        "${widget.pasien.tgllahir}"), // Menampilkan tanggal lahir pasien
                    Text(
                        "${widget.pasien.nmrtlp}"), // Menampilkan nomor telepon pasien
                    Text(
                        "${widget.pasien.alamat}"), // Menampilkan alamat pasien
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text(
                        "Ubah")), // Menampilkan tombol "Ubah" dengan latar belakang hijau
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                        "Hapus")), // Menampilkan tombol "Hapus" dengan latar belakang merah
              ],
            )
          ],
        ));
  }
}
