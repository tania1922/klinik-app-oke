import 'package:flutter/material.dart';
import '/ui/poli/poli_page.dart';
import '/ui/poli/poli_update_form.dart';
import '/model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({Key? key, required this.poli}) : super(key: key);

  @override
  _PoliDetailState createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Detail Poli")), // Menampilkan judul "Detail Poli" pada AppBar
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli: ${widget.poli.namaPoli}", // Menampilkan nama poli
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Menampilkan tombol "Ubah"
              _tombolHapus(), // Menampilkan tombol "Hapus"
            ],
          )
        ],
      ),
    );
  }

  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PoliUpdateForm(
                  poli: widget
                      .poli)), // Navigasi ke halaman PoliUpdateForm dengan membawa objek poli
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.green), // Mengatur latar belakang tombol menjadi hijau
      child: const Text("Ubah"), // Menampilkan teks "Ubah" pada tombol
    );
  }

  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text(
              "Yakin ingin menghapus data ini?"), // Menampilkan konfirmasi hapus
          actions: [
            // tombol ya
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PoliPage())); // Navigasi ke halaman PoliPage setelah menghapus data
              },
              child: const Text("YA"), // Menampilkan teks "YA" pada tombol
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .red), // Mengatur latar belakang tombol menjadi merah
            ),
            // tombol batal
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"), // Menampilkan teks "Tidak" pada tombol
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green), // Mengatur latar belakang tombol menjadi hijau
            )
          ],
        );
        showDialog(
            context: context,
            builder: (context) =>
                alertDialog); // Menampilkan dialog konfirmasi hapus
      },
      style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.red), // Mengatur latar belakang tombol menjadi merah
      child: const Text("Hapus"), // Menampilkan teks "Hapus" pada tombol
    );
  }
}
