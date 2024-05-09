import 'package:flutter/material.dart';
import 'package:klinik_app/ui/pasien/pasien_page.dart';
import 'package:klinik_app/ui/pegawai/pegawai_page.dart';
import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui/poli/poli_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName:
                Text("Admin"), // Menampilkan teks "Admin" sebagai nama akun
            accountEmail: Text(
                "admin@admin.com"), // Menampilkan teks "admin@admin.com" sebagai email akun
          ),
          ListTile(
            leading: const Icon(Icons.home), // Menampilkan ikon rumah
            title: const Text("Beranda"), // Menampilkan teks "Beranda"
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Beranda()), // Navigasi ke halaman Beranda
              );
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.accessible), // Menampilkan ikon aksesibilitas
            title: const Text("Poli"), // Menampilkan teks "Poli"
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const PoliPage()), // Navigasi ke halaman PoliPage
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people), // Menampilkan ikon orang
            title: const Text("Pegawai"), // Menampilkan teks "Pegawai"
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const PegawaiPage()), // Navigasi ke halaman PoliPage
              );
            },
          ),
          ListTile(
            leading: const Icon(
                Icons.account_box_sharp), // Menampilkan ikon kotak akun
            title: const Text("Pasien"), // Menampilkan teks "Pasien"
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const PasienPage()), // Navigasi ke halaman PoliPage
              );
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.logout_rounded), // Menampilkan ikon logout
            title: const Text("Keluar"), // Menampilkan teks "Keluar"
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Login()), // Navigasi ke halaman Login dan hapus semua rute sebelumnya
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
