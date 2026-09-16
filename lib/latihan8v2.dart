import 'package:estron/latihan8.dart';
import 'package:estron/pages/login_screen.dart';
import 'package:estron/tugas7.dart';
import 'package:flutter/material.dart';



class Latihan8v2 extends StatefulWidget {
  const Latihan8v2({super.key});

  @override
  _Latihan8v2State createState() => _Latihan8v2State();
}

class _Latihan8v2State extends State<Latihan8v2> {
  // Indeks halaman aktif saat ini
  int _selectedIndex = 0;

  // Daftar judul untuk AppBar berdasarkan halaman aktif
  final List<String> _titles = [
    'Halaman Latihan bottom navigator',
    'Halaman Tugas 7',
  ];

  // Daftar widget halaman tujuan
  final List<Widget> _pages = [
    const Latihan8(),
    const Tugas7(),
  ];

  // Fungsi untuk mengubah halaman aktif
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Askar Arrafi'),
              accountEmail: Text('askararrafi@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            // Menu 1: Beranda
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Bottom Navigator'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),

            // Menu 2: Pengaturan
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login Screen'),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}