import 'package:flutter/material.dart';

class Latihan8 extends StatefulWidget {
  const Latihan8({super.key});

  @override
  State<Latihan8> createState() => _Latihan8State();
}

class _Latihan8State extends State<Latihan8> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const Center(child: Text("Halaman Beranda 1", style: TextStyle(fontSize: 24)),
    ),
    const Center(child: Text('Halaman Cari 2', style: TextStyle(fontSize: 24)),
    ),
    const Center(
      child: Text('Halaman Profile 3', style: TextStyle(fontSize: 24)) ,
    ),
  ];
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Bottom Navigator"),
        backgroundColor: Colors.deepPurple,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Cari",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ]
      )
    );
  }
}